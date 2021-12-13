
![Build Status](https://github.com/obophenotype/provisional_cell_ontology/workflows/CI/badge.svg)
# Provisional Cell Ontology

Description: Cell types that are provisionally defined by experimental techniques such as single cell transcriptomics rather than a straightforward & coherent set of properties. All terms subclass conventionally defined terms in CL. If more data emerges that allows more conventional definitions, terms may migrate to CL.

More information can be found at http://obofoundry.org/ontology/pcl

## Versions

### Stable release versions

The latest version of the ontology can always be found at:

http://purl.obolibrary.org/obo/pcl.owl

(note this will not show up until the request has been approved by obofoundry.org)

### Editors' version

Editors of this ontology should use the edit version, [src/ontology/pcl-edit.owl](src/ontology/pcl-edit.owl)

## Contact

Please use this GitHub repository's [Issue tracker](https://github.com/obophenotype/provisional_cell_ontology/issues) to request new terms/classes or report errors or specific concerns related to the ontology.

## Acknowledgements

This ontology repository was created using the [Ontology Development Kit (ODK)](https://github.com/INCATools/ontology-development-kit).

## Ontology Components 

Brain Data Standards Ontology (https://github.com/obophenotype/brain_data_standards_ontologies)

## Contributors

David Osumi-Sutherland 
Huseyin Kir
Shawn Zheng Kai Tan
Richard Scheuermann
Brian Aevermann 

## For Editors

Currently, for the release to be prepared correctly, we need to force bdso-ext.owl component to be built first - this can be done by using `sh run.sh make components/bdso-base-ext.owl prepare_release`

## Cite

Brain Data Standards: https://www.biorxiv.org/content/10.1101/2021.10.10.463703v1
