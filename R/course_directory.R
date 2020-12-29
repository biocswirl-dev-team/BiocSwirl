## course directory
# contains all the install info
# this would be the only data that needs to be up to date
course_directory <- data.frame(course_name = c("Intro_to_Data_Science","Intro_to_Stats", "RNAseq","scRNAseq","ChIPseq"),
                               course_full = c("BiocSwirl_Intro_to_Data_Science","BiocSwirl_Intro_to_Stats", "BiocSwirl_RNAseq", "BiocSwirl_scRNAseq", "BiocSwirl_ChIPseq"),
                               github_username = rep("biocswirl-dev-team", 5),
                               branch = rep("main", 5),
                               description = c("Intro to R and data analysis","Intro to Statistics", "bulk RNAseq analysis","single-cell RNAseq analysis","ChIPseq analysis"))
