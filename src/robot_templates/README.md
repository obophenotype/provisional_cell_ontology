### Robot templates

This folder contains the ROBOT templates used to construct the pcl ontology.  

These templates consist of tsv files with a header, a template row and a table of fillers.

Each new template added should be added to the build by including the name (minus the file extendion) in the list of JOBS in the [Makefile.pcl](../ontology/Makefile.pcl).

Where markers are referenced in a template, names for these markers may be added by appending to [markers.tsv](markers.tsv).

support.owl = an OWL file with relations + labels.  This is needed because of quirks in the way Robot templates work. 

### Building Brain Atlas Templates

A Jupyter notebook is included for converting excel spreadsheets from the Scheurmann group. This can be run on a new file by editing the input_file and dataset name (JOB  name in pcl.Makefile) at the start of the notebook.


### Building OWL

Building OWL requires the ODK docker container to be installed (docker pull odk-full), and the repo root to be added to docker file-sharing.

Builds are run from src/ontology.

pcl-edit.obo can be rebuilt using: `./run.sh make pcl-edit.obo`

A full release can be run (including building from templates, updating imports and running tests) with:

`./run.sh make prepare_release`



