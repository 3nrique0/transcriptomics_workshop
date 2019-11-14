#!/bin/bash

# ALL SCRIPTS ARE TO BE LAUNCHED FROM THE ROOT OF THE PROJECT


fastq_data=$1
fasta_reference=$2
map_dir=$3

mkdir -p $map_dir

for i in $(find $fastq_data -name *_R1.fq.gz);
do

    root_name=$(basename -s _R1.fq.gz $i);
    var=$(dirname $i);

    echo -e 'file' $root_name -\> ${map_dir}${root_name}.sam;
    echo $i ${i/_R1/_R2};

    echo '#### MAPPING';
    bowtie2 --phred33 -5 15 -3 5 -p 4 -t -x $fasta_reference -1 $i -2 ${i/_R1/_R2} -S ${map_dir}${root_name}.sam;

    echo '#### SORTING';
    samtools sort -O BAM -o ${map_dir}${root_name}.sort.bam ${map_dir}${root_name}.sam;
    samtools index -b ${map_dir}${root_name}.sort.bam;

done
