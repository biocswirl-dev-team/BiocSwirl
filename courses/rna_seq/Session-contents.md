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

- Check read quality with fastqc
- quality & adapter trimming

## Read_alignment_quantification

- alignment of reads to genome assembly
- STAR: slow / splice aware / may find intergenic regions
- mention other aligners? (bowtie2, ...)

- 'quasi-alignment' of reads to transcriptome
- aim: quantification only [though it can make fakish bam files]
- depends on high quality transcriptome / genome annotation
- salmon: wicked-fast / accurate qunatification / now unknown transcripts

## Import_Data

-> merge into previous/following lesson

## Pre-Processing

- removing zero count genes
- rlog transformation of count data
- normalizing by library size
- visually comparing raw and transformed counts
- missing: spike-ins?
- missing: other transformations


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

- histogram of pvalues (evaluating success of analysis?)
- plotting counts for genes of interest/ controls etc
- tbc: MA plot
- tbc: volcano plot
- tbc: heatmap

## Pathway_Analysis

- functional analysis of significant genes
- Go term, Kegg pathways, etc.

## References
Dataset used from "Imbalanced Host Response to SARS-CoV-2 Drives Development of COVID-19", Blanco-Melo et al. 2020, https://doi.org/10.1016/j.cell.2020.04.026\

Workflow based on 
http://bioinformatics.sdstate.edu/idep/
https://bioconductor.org/packages/release/workflows/vignettes/rnaseqGene/inst/doc/rnaseqGene.html
https://chagall.med.cornell.edu/RNASEQcourse/Intro2RNAseq.pdf