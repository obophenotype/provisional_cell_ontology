## Customize Makefile settings for pcl
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

$(SRCMERGED): $(SRC) $(COMPONENTSDIR)/bdso-base-ext.owl $(COMPONENTSDIR)/whbo-base-ext.owl
	$(ROBOT) remove --input $< --select imports --trim false \
		merge  $(patsubst %, -i %, $(OTHER_SRC)) -o $@

BDSO_BASE_EXT_URL = "https://raw.githubusercontent.com/obophenotype/brain_data_standards_ontologies/master/bdso-pcl-comp.owl"
$(COMPONENTSDIR)/bdso-pcl-comp.owl: $(SRC)
	$(ROBOT) annotate -I $(BDSO_BASE_EXT_URL) --ontology-iri $(ONTBASE)/$@ -o $@

WHBO_BASE_EXT_URL = "https://github.com/hkir-dev/whole_human_brain_ontology/raw/main/whbo-base.owl"
$(COMPONENTSDIR)/whbo-pcl-comp.owl: $(SRC)
	$(ROBOT) annotate -I $(WHBO_BASE_EXT_URL) --ontology-iri $(ONTBASE)/$@ -o $@
	
#######################################
#  Make Combined CL and PCL Product  #
######################################

# Combine CL base with PCL full
$(TMPDIR)/cl-pcl-combined.owl: pcl-full.owl $(MIRRORDIR)/cl.owl
	$(ROBOT) merge -i pcl-full.owl -i $(MIRRORDIR)/cl.owl annotate --ontology-iri $(ONTBASE)/$@ --output $@

# Create a full seed txt with all terms 
$(TMPDIR)/full_seed.txt: $(TMPDIR)/cl-pcl-combined.owl
	$(ROBOT) query -f csv -i $(TMPDIR)/cl-pcl-combined.owl --query ../sparql/simple-seed.sparql $(TMPDIR)/full_seed.txt

# Create an import with all the terms
$(IMPORTDIR)/merged_cl-full_import.owl: $(MIRRORDIR)/merged.owl $(TMPDIR)/full_seed.txt
	if [ $(IMP) = true ]; then $(ROBOT) merge -i $< \
	remove  --select "<http://www.informatics.jax.org/marker/MGI:*>" remove  --select "<http://purl.obolibrary.org/obo/OBA_*>" remove  --select "<http://purl.obolibrary.org/obo/ENVO_*>" remove  --select "<http://purl.obolibrary.org/obo/OBI_*>" remove  --select "<http://purl.obolibrary.org/obo/GOCHE_*>" remove  --select "<http://purl.obolibrary.org/obo/CARO_*>" remove  --select "<http://purl.obolibrary.org/obo/NCBITaxon_Union_*>" remove  --select "<http://www.genenames.org/cgi-bin/gene_symbol_report*>"  \
		extract -T $(IMPORTDIR)/merged_terms_combined.txt --force true --copy-ontology-annotations true --individuals exclude --method BOT \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/postprocess-module.ru \
		annotate --ontology-iri $(ONTBASE)/$@ $(ANNOTATE_ONTOLOGY_VERSION) --output $@.tmp.owl && mv $@.tmp.owl $@; fi

# Merge full import in
pcl-cl-full.owl: $(SRC) $(OTHER_SRC) $(IMPORTDIR)/merged_cl-full_import.owl
	$(ROBOT) merge --input $< \
		reason --reasoner ELK --equivalent-classes-allowed asserted-only --exclude-tautologies structural \
		relax \
		reduce -r ELK \
		$(SHARED_ROBOT_COMMANDS) annotate --ontology-iri $(ONTBASE)/$@ $(ANNOTATE_ONTOLOGY_VERSION) --output $@.tmp.owl && mv $@.tmp.owl $@