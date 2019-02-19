### Source TSV

MTG.tsv

This is a TSV version of  mtg\_eq.owl nsf2\_full\_mtg\_ver3\_6\_Nature_table.xlsx

IMPORTANT:  There  are multiple columns with the header selectively_expresses - these need to be manually changed to selectively\_expresses.n (where n is 1-4)  in order for the build to work.


### Building templates

3 Robot templates are built by this Jupyter notebook: MTG\_tsv2Robot\_template.ipynb:

 *  mtg_subclass.tsv - A template for building an ontology with only SubClassOf axioms.

 * mtg_equivalent.tsv - A template for building an ontology with equivalent class axioms for all classes.  For neurons - only a generic classification is asserted based on the content of the neuron\_type column - ignoring the asserted classification in MTG.tsv

 * markers.tsv - a template for building a simple OWL file associating marker IRIs with names.

### Robot build commands

    robot template --input support.owl --template markers.tsv annotate --ontology-iri "http://www.jcvi.org/cl_ext/markers.owl" --output ../ontology/markers.owl

    robot template --input support.owl --template mtg_subclass.tsv annotate --ontology-iri "http://www.jcvi.org/cl_ext/mtg_sc.owl" --output ../ontology/mtg_sc.owl

    robot template --input support.owl --template mtg_equivalent.tsv annotate --ontology-iri "http://www.jcvi.org/cl_ext/mtg_eq.owl" --output ../ontology/mtg_eq.owl

support.owl = an OWL file with relations + labels.  This is needed because of quirks in the way Robot templates work. 
