#install packages
install.packages("swirlify", dependencies = TRUE)

#load libraries
library("swirlify")
library("usethis")
library("devtools")

#see wd
getwd()
#setwd("C:/Users/LNC/Documents/scRNA-seq")

#add lessons 
new_lesson("low_level_analyses_intro", "scRNA-seq")
add_to_manifest()
new_lesson("low_level_analyses_explain_alignment", "scRNA-seq")
add_to_manifest()
## OTHER
new_lesson("low_level_analyses_counting_reads", "scRNA-seq")
add_to_manifest()

new_lesson("high_level_analyses_intro", "scRNA-seq")

add_to_manifest() #generate MANIFEST FILE 

.get_course_path() #get course path 
# [1] "C:/Users/LNC/Documents/R/win-library/3.5/swirl/Courses"

get_current_lesson()
demo_lesson()


#gene_count <- read.csv("C:/Users/LNC/Documents/R/win-library/3.5/swirl/Courses/scRNA-seq/low_level_analys