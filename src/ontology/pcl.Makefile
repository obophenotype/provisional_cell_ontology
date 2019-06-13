JOBS = markers mtg m1

OWL_FILES = $(patsubst %, ../robot_templates/%.owl, $(JOBS))

../robot_templates/%.owl: ../robot_templates/%.tsv
	echo $@; $(ROBOT) template -i ../robot_templates/support.owl --template $< -o $@;

$(SRC): $(OWL_FILES)
	$(ROBOT) merge -i $(SRC) $(patsubst %, -i %, $^) --collapse-import-closure false -o $@

# src -> datasets -> tmp.owl, markers.owl, mtg.owl, m1.owl 
