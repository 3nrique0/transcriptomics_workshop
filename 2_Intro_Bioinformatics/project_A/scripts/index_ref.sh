#!/bin/bash

# ALL SCRIPTS ARE TO BE LAUNCHED FROM THE ROOT OF THE PROJECT


# Parameters
fasta_reference=$1
fasta_reference_idx=${fasta_reference}_idx/

# Test if indexes are at the expected location
test -d $fasta_reference_idx

# If index is not created, make index. $? == 1 if directory does not exists
if [ $? -eq 1 ]; 
    then 
        echo '#### ' $fasta_reference_idx ' does not exists';
        mkdir -p $fasta_reference_idx;
        bowtie2-build $fasta_reference $fasta_reference_idx;
        echo '#### ' $fasta_reference_idx ' has been created';
    fi


