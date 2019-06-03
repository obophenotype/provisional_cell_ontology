## Customize Makefile settings for pcl
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

### Aim - compile a set of robot templates to OWL files.

### Generate appropriate imports - this could be done from OWL files or from

OWLTOOLS = owltools

# MTG_exptl :markers.owl MTGsc MTGeq

imports/markers_import.owl: ../robot_templates/markers.tsv
	$(ROBOT) template --input ../robot_templates/support.owl --template $< annotate --ontology-iri "http://www.jcvi.org/cl_ext/imports/markers.owl" -o $@

#mtg_sc.owl:
#	$(ROBOT) template --input support.owl --template ../robot_templates/mtg_subclass.tsv annotate --ontology-iri "http://www.jcvi.org/cl_ext/mtg_sc.owl" --output 

#mtg_eq.owl:
#	$(ROBOT) template --input support.owl --template ../robot_templates/mtg_equivalent.tsv annotate --ontology-iri "http://www.jcvi.org/cl_ext/mtg_eq.owl" --output

## Turn these into a generator statements: Aim - a list of names 

mtg.owl: ../robot_templates/mtge.tsv
	$(ROBOT) template --input ../robot_templates/support.owl --template $< annotate --ontology-iri "http://www.jcvi.org/cl_ext/mtg.owl" -o $@

$(SRC): mtg.owl
	$(OWLTOOLS) pcl-template.owl --merge  $< -o $@




