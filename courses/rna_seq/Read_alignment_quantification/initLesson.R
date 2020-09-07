# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}


if (!requireNamespace("Rsubread", quietly = TRUE))
  BiocManager::install("Rsubread")

if(!requireNamespace("tximport", quietly = TRUE))
  BiocManager::install("tximport")

if(!requireNamespace("GenomicFeatures", quietly = TRUE))
  BiocManager::install("GenomicFeatures")

if(!requireNamespace("TxDb.Hsapiens.UCSC.hg19.knownGene", quietly = TRUE))
  BiocManager::install("TxDb.Hsapiens.UCSC.hg19.knownGene")



library(Rsubread)
library(tximport)
library(GenomicFeatures)
library(TxDb.Hsapiens.UCSC.hg19.knownGene)

txdb <- TxDb.Hsapiens.UCSC.hg19.knownGene

bamfile <- file.path(.get_course_path(), 'rna_seq', 'Read_alignment_quantification', 'SRR11412215_Aligned.sortedByCoord.out.bam')

salmon.files <- c(file.path(.get_course_path(), 'rna_seq', 'Read_alignment_quantification', 'SRR11412215', 'quant.sf'))


