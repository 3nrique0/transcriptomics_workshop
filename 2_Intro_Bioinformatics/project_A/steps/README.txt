This is the list of general steps to follow.
Details can be contained in this file.
If steps are too long to detail, one file will be specifically made.

General steps are:

1 Download data
2 Quality Check (QC)
3 Cleaning Data
4 Quality Check... Again !
5 Mapping
6 Mapping Quality Check

####


1 Download data

Use md5sum to check the integrity of the downloaded files if it is available.
Else just read the begining and ending of the files.
If the end of file is atteined before the end, it is possible that the file has been truncated during the download.

2 Quality Check (QC)

Use FastQC. Details on the script/quality_check.sh

3 Cleaning Data

From the QC step, chose the parameters to be used to clean the data.
We'll use cutadapt for some files and trimmomatic for others.

4 Quality Check... Again !

5 Mapping

First index the reference genome found in data/ref/
Then run bowtie2 for this example

6 Mapping Quality Check

We'll just focus on the output of bowtie
