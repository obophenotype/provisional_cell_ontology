
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

- David Osumi-Sutherland 
- Huseyin Kir
- Shawn Zheng Kai Tan
- Richard Scheuermann
- Brian Aevermann 
- Jeremy A Miller 
- Tom Gillespie 
- Yun (Renee) Zhang 
- Nicolas Matentzoglu


## For Editors

Currently, for the release to be prepared correctly, we need to force bdso-ext.owl component to be built first - this can be done by using `sh run.sh make components/bdso-base-ext.owl prepare_release`

## Cite

- Brain Data Standards: https://www.biorxiv.org/content/10.1101/2021.10.10.463703v1
- PCL usage: [PMID:34616062](https://pubmed.ncbi.nlm.nih.gov/34616062/), [PMID:31435019](https://pubmed.ncbi.nlm.nih.gov/31435019/), [PMID:29322913](https://pubmed.ncbi.nlm.nih.gov/29322913/)

## Ontology Metadata
```
id: pcl
mirror_from: https://raw.githubusercontent.com/obophenotype/provisional_cell_ontology/master/pcl-base.owl
title: "Provisional Cell Ontology"
contact:
  email: davidos@ebi.ac.uk
  label: David Osumi-Sutherland
  github: dosumis
description: Cell types that are provisionally defined by experimental techniques such as single cell or single nucleus transcriptomics rather than a straightforward & coherent set of properties. 
domain: phenotype
homepage: https://github.com/obophenotype/provisional_cell_ontology
products:
  - id: pcl.owl
  - id: pcl.obo
  - id: pcl.json
  - id: pcl-base.owl
  - id: pcl-base.obo
  - id: pcl-base.json
  - id: pcl-full.owl
  - id: pcl-full.obo
  - id: pcl-full.json
  - id: pcl-simple.owl
  - id: pcl-simple.obo
  - id: pcl-simple.json
dependencies:
  - id: pr
  - id: go
  - id: uberon 
  - id: ro
  - id: pato
  - id: ncbitaxon
  - id: bfo
  - id: cl
  - id: omo
  - id: nbo
  - id: chebi
  - id: so
tracker: https://github.com/obophenotype/provisional_cell_ontology/issues
license:
  url: http://creativecommons.org/licenses/by/4.0/
  label: CC BY 4.0
usages:
  - user: https://biccn.org/
    description: This ontology will be used to annotate cell types in single cell transcriptomics data, with an initial focus on the brain. It is also used to drive search and navigation in a cell type data explorer web application. 
repository: https://github.com/obophenotype/provisional_cell_ontology
preferredPrefix: PCL
```
