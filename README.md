
![Build Status](https://github.com/obophenotype/provisional_cell_ontology/workflows/CI/badge.svg)
# Provisional Cell Ontology

Description: None

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

## For Editors

Currently, for the release to be prepared correctly, we need to force bdso-ext.owl component to be built first - this can be done by using `sh run.sh make components/bdso-base-ext.owl prepare_release`
