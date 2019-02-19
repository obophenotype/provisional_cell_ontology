robot template --input support.owl --template markers.tsv annotate --ontology-iri "http://www.jcvi.org/cl_ext/markers.owl" --output ../ontology/markers.owl

#robot template --input support.owl --template mtg_subclass.tsv annotate --ontology-iri "http://www.jcvi.org/cl_ext/mtg_sc.owl" --output ../ontology/mtg_sc.owl

#robot template --input support.owl --template mtg_equivalent.tsv annotate --ontology-iri "http://www.jcvi.org/cl_ext/mtg_eq.owl" --output ../ontology/mtg_eq.owl

robot template --input support.owl --template mtg.tsv annotate --ontology-iri "http://www.jcvi.org/cl_ext/mtg_eq.owl" --output ../ontology/mtg.owl

