#!/bin/bash

# ALL SCRIPTS ARE TO BE LAUNCHED FROM THE ROOT OF THE PROJECT


## Parameters and arguments for the analysis
fastq_data=data/series_1/raw_data/
dataset_name=series_1
fasta_reference=data/refs/ #...??
fasta_reference_idx=${fasta_reference}_idx/
map_dir=results/mapping/$dataset_name

# Quality check with FASTQC and compilation of reports with MultiQC
bash  scripts/qc_fastq.sh  $fastq_data  $dataset_name


# Index ref
bash  scripts/index_ref.sh  $fasta_reference


# Mapping
bash  scripts/mapping.sh  $fastq_data  $fasta_reference  $fasta_reference_idx  $map_dir
