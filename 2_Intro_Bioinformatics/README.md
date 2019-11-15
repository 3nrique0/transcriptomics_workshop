# Introduction to Bioinformatics

We'll try to understand a project that is ongoing, **project_A**.
As we explore the different sections of the file we'll make use of the structure of a project we learned how to create on the previous workshop.

This file, **README.md** will serve as an index.


## 1.History of bioinformatics

The term [_bioinformatics_](https://en.wikipedia.org/wiki/Bioinformatics) was first mentionned by Paulien Hogeweg and Ben Hesper in 1970 to refere to the study of information processes in biotic systems. It was a term similar to _biochemistry_ used to name the field of study of chemical processes in biological systems. 

Between the years 1970's to the late 1990's this term was used to encompass domains like Evolutionary Biology, Phylogeny and Popilation Genetics. Since the advent of the Human Genome Project and pyrosequencing in the early 2000's the term _Bioinformatics_ was extended to the study of genomics.

Bioinformatics by it's roots means _BIOlogical INFOrmation autoMATIzation_. It allows to apply particularly _text mining_ methods to analyse full sets of (gen)omic information.


## 2.Before sequencing

Before sending your sample's RNA to sequencing, there are a whole lot of stages:

1. Get a biological sample.
2. Freeze it -- Specially for RNAseq.
3. Extract RNA.
4. Filter for mRNA
5. Synthesize cDNA.
6. Fragment it.
7. Tag it.
8. Amplify it.
9. Double check that you didn't inversed 5 and 6.

In short:
* Freezing it is important, RNA is delicate and transitory. We freeze the sample to stop the biological sample from changing state and degrading part of it's pool of RNA.
* Most RNA in a cell is rRNA, so we filter RNA using a polyT matrix. Hopefully we'll retain most polyA molecules
* Sinthesize cDNA using the longest possible fragments of mRNA
* DNA is sturdy and will resist the rest of the process.
* Identify the steps, and latency times that may cause a biais to your data.

## 3.Treating NGS data

Treating NGS data for most omics is very similar. What you'll learn here may be declined in other projects

### a) Download data

Your provider will give you a link to download the data. Check for integrity.
If the provider has given you a text file containing a 2 coloumn table. On one column the file name, on the other an [**md5sum**](https://en.wikipedia.org/wiki/Md5sum). It is a file fingerprint. You'll have to calculate them for all the fliles. if the number is exactly the same, the information is exactly the same.

Find where are the **.fastq.gz** files. If you made Paired End (PE) sequencing you'll find R1 and R2 files.

Check the `data/raw_data` directory

What kind of files are they ? Inspect the data folder

The Wikipedia page for [Fastq format](https://en.wikipedia.org/wiki/FASTQ_format) is the more complete. We'll explore it together.

### b) Quality Check (qc)

It is a very large amount of data, so we'll use a program to help us do the quality check.
The most commonly used program is [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/).

Check the `result/quality_check/` directory

What is the output ?
How do I read it ?

Agglomerating the results of FastQC in one single file will help a lot to visualize and compare.
We'll use [MultiQC](https://multiqc.info/) to do so.

### c) Cleaning data

After assessing the state of the _raw_data_ we'll chose some parameters to clean the data out.

Depending on the data we'll use:
* [cutadapt](https://cutadapt.readthedocs.io/en/stable/)
* [trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic)
* [prinseq](http://prinseq.sourceforge.net/)

There are may choices out there.
Chose what it feels better or what your scientific peers use. 

### d) Quality Check... Again !

This time you can use MultiQC to compare the files before and after cleaning.

### e) Mapping

You'll need a reference genome. The tools to use are most commonly:
* [BWA-MEM](http://bio-bwa.sourceforge.net/)
* [Bowtie2](http://bowtie-bio.sourceforge.net/bowtie2/manual.shtml)

Here again, there are many choices. for programs

### f) Mapping Quality

How to assess Quickly the quality of the mapping ?

**YAY!! You can check the quality of your data, and prepare the mapping files!!
Congratulations!! **
