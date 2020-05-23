## Introduction

- General description of course content
- Designate which lessons use R or command-line executables (may need biocterm)
- General intro to RNAseq

## fastq_download

- data depository guidelines, how to find datasets
- description of GEO database
- how to donwload data (mention ncbi etulis?)

## fastq_trimming

- quality & adapter trimming 
- fastqc / multiqc

## genome_alignment

- alignment of reads to genome assembly
- STAR: slow / splice aware / may find intergenic regions
- mention other aligners? (bowtie2, ...)

## quasi-alignment_quantification

- 'quasi-alignment' of reads to transcriptome
- aim: quantification only [though it can make fakish bam files]
- depends on high quality transcriptome / genome annotation
- salmon: wicked-fast / accurate qunatification / now unknown transcripts

## Import_Data

- load count tables
- raw vs TPM vs ...
- tximport ?

## Pre-Processing

- removing zero count genes
- rlog transformation of count data
- normalizing by library size
- visually comparing raw and transformed counts
[missing: spike-ins?]

## k-Means

- tbd, maybe delete?

## PCA

- first glance at your RNA seq data after pre-processing
- calculation of Euclidean Distance between samples
- visalizing Euclidean Distance in a heatmap
- Principle Component Analysis and plot

## DESeq2

- running differential expression
- building results table with comparisons
- correction for multiple testing
- filtering for significant results

## Examine_DESEq2_results

- plotting counts for genes of interest/ controls etc
- MA plot
- histogram of pvalues (evaluating success of analysis?)
- volcano plot
- heatmap

## Pathway_Analysis

- functional analysis of significant genes
- Go term, Kegg pathways, etc.

## Heatmap

- delete and put under "examine deseq results"?


## References
Dataset used from "Imbalanced Host Response to SARS-CoV-2 Drives Development of COVID-19", Blanco-Melo et al. 2020, https://doi.org/10.1016/j.cell.2020.04.026\

Workflow based on 
http://bioinformatics.sdstate.edu/idep/
https://bioconductor.org/packages/release/workflows/vignettes/rnaseqGene/inst/doc/rnaseqGene.html
https://chagall.med.cornell.edu/RNASEQcourse/Intro2RNAseq.pdf