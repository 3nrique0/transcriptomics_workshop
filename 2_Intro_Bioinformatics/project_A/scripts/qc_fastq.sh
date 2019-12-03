#!/bin/bash

# ALL SCRIPTS ARE TO BE LAUNCHED FROM THE ROOT OF THE PROJECT

# Quality check

# Argument 1 must be a path:
#       data/exp4/raw_data/
# Argument 2 must be the name of the dataset. It'll be used as title for MultiQC:
#       experiment_4


input_directory=$1
out_dir=$(basename $input_directory)

dataset_name=$2

# Create directories for the outputs of fastqc and multiqc
mkdir -p steps/$out_dir/{fastqc,multiqc}

# Run FastQC
fastqc --no-extract -o steps/$out_dir/fastqc/ $input_directory*


# Create a virtual environment to use MultiQC
source ~/envs/biopython/bin/activate
multiqc -f -i $dataset_name -n $dataset_name -o steps/$out_dir/multiqc/ steps/$out_dir/fastqc/
deactivate
