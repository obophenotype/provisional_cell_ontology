## Customize Makefile settings for pcl
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

$(SRCMERGED): $(SRC) $(COMPONENTSDIR)/bdso-base-ext.owl
	$(ROBOT) remove --input $< --select imports --trim false \
		merge  $(patsubst %, -i %, $(OTHER_SRC)) -o $@

BDSO_BASE_EXT_URL = "https://raw.githubusercontent.com/obophenotype/brain_data_standards_ontologies/master/bdso-pcl-comp.owl"
$(COMPONENTSDIR)/bdso-pcl-comp.owl: $(SRC)
	$(ROBOT) annotate -I $(BDSO_BASE_EXT_URL) --ontology-iri $(ONTBASE)/$@ -o $@

	


