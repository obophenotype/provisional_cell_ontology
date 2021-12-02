## Customize Makefile settings for pcl
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

COMPONENTS = bdso-base-ext

COMPONENT_OWL_FILES = $(patsubst %, $(COMPONENTSDIR)/%.owl, $(COMPONENTS))

$(SRCMERGED): $(SRC) all_components.owl
	$(ROBOT) remove --input $< --select imports --trim false \
		merge  $(patsubst %, -i %, $(OTHER_SRC)) -o $@

all_components.owl: $(COMPONENT_OWL_FILES)
	$(ROBOT) merge $(patsubst %, -i %, $^) \
	 --collapse-import-closure false \
	 annotate --ontology-iri ${ONTBASE}/$@  \
	 convert -f ofn	 -o $(COMPONENTSDIR)/all_components.owl



