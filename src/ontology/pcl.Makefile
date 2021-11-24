## Customize Makefile settings for pcl
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile


imports/pr_import.owl: mirror/pr.owl imports/pr_terms_combined.txt
	if [ $(IMP) = true ] && [ $(IMP_LARGE) = true ]; then $(ROBOT) extract -i $< -T imports/pr_terms_combined.txt --force true --individuals include --method BOT \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/postprocess-module.ru \
		annotate --ontology-iri $(ONTBASE)/$@ $(ANNOTATE_ONTOLOGY_VERSION) --output $@.tmp.owl && mv $@.tmp.owl $@; fi
.PRECIOUS: imports/pr_import.owl
	
imports/ncbitaxon_import.owl: mirror/ncbitaxon.owl imports/ncbitaxon_terms_combined.txt
	if [ $(IMP) = true ] && [ $(IMP_LARGE) = true ]; then $(ROBOT) extract -i $< -T imports/ncbitaxon_terms_combined.txt --force true --individuals include --method BOT \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/postprocess-module.ru \
		annotate --ontology-iri $(ONTBASE)/$@ $(ANNOTATE_ONTOLOGY_VERSION) --output $@.tmp.owl && mv $@.tmp.owl $@; fi
.PRECIOUS: imports/ncbitaxon_import.owl
	