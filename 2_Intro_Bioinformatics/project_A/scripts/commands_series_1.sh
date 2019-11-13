#!/bin/bash

# ALL SCRIPTS ARE TO BE LAUNCHED FROM THE ROOT OF THE PROJECT

# Quality check

mkdir -p restults/qc_series_1/{fastqc,multiqc}

fastqc --no-extract -o restults/qc_series_1/fastqc/ data/series_1/*


# Create a virtual environment to 

source ~/envs/biopython/bin/activate
multiqc -f -i series_1 -n series_1 -o restults/qc_series_1/multiqc/ restults/qc_series_1/fastqc/
deactivate
