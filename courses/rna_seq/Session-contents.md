## Introduction

- General description of course content
- Designate which lessons use R or command-line executables (may need biocterm)
- General intro to RNAseq

## fastq_download

- Introduction to fastq file format
- Introduction to GEO database
- How to find samples on SRA
- How to download data

maybe/todo: - data depository guidelines, how to find datasets

## fastq_trimming

- quality & adapter trimming 
- fastqc / multiqc

## genome_alignment

- alignment of reads to genome assembly
- STAR: slow / splice aware / may find intergenic regions
- mention other aligners? (bowtie2, ...)

## quasi-alignment_quantification

- 'quasi-alignment' of reads to transcriptome
- aim: qunatification only [though it can make fakish bam files]
- depends on high quality transcriptome / genome annotation
- salmon: wicked-fast / accurate qunatification / now unknown transcripts

## Import_Data

- load count tables
- raw vs TPM vs ...
- tximport ?

## Pre-Processing
## k-Means
## PCA
## DESeq2
## Examine_DESEq2_results
## Pathway_Analysis
## Heatmap