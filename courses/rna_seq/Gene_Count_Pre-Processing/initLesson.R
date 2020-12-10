# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

dataset <- data.frame(read.table(file.path(.get_course_path(), "rna_seq", "Gene_Count_Pre-Processing", "GSE147507_RawReadCounts_Human_subset.tsv"),
                      header = TRUE, stringsAsFactors = FALSE))
dataset <- dataset[,c(1:6)]

colData <- data.frame(names = colnames(dataset), condition = c("mock","mock","mock","treatment","treatment","treatment"))


colors <- colorRampPalette( rev(brewer.pal(9, "Blues")) )(255)

if (!requireNamespace("hexbin", quietly = TRUE))
  BiocManager::install("hexbin")

library(hexbin)
