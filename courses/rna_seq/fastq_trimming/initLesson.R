# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.


.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

overrepresentedSequences <- data.frame(Sequence = c("GGGCAGGATAGTTCAGACGGTTTCTATTTCCTGAGCGTCTGAGATGTTAG", "GTCTGTTAGTAGTATAGTGATGCCAGCAGCTAGGACTGGGAGAGATAGGA", "CCCCTTACTCAGCTTGAACTTGTCGCCCTCTTGGCAGGAGTACTTGTGGA", "GGGAGGGCGATGAGGACTAGGATGATGGCGGGCAGGATAGTTCAGACGGT", "CCCGTATCGAAGGCCTTTTTGGACAGGTGGTGTGTGGTGGCCTTGGTATG", "GCCTGGTTCTAGGAATAATGGGGGAAGTATGTAGGAGTTGAAGATTAGTC", "GTGGTGATTAGTCGGTTGTTGATGAGATATTTGGAGGTGGGGATCAATAG", "GGGGCAATGAATGAAGCGAACAGATTTTCGTTCATTTTGGTTCTCAGGGT", "CCCCCTTACTCAGCTTGAACTTGTCGCCCTCTTGGCAGGAGTACTTGTGG"),
                                       Count = c(12671, 10274, 5055, 4772, 4753, 4597, 4586, 4496, 4296),
                                       Percentage = c(0.2974133884, 0.2411510656, 0.1186508309, 0.1120082621, 0.1115622946, 0.1079006666, 0.1076424749, 0.1055299972, 0.1008356023),
                                       Possible.Source = c("No Hit", "No Hit", "No Hit", "No Hit", "No Hit", "No Hit", "No Hit", "No Hit", "No Hit"))


p1 <- readPNG(file.path(.get_course_path(), 'rna_seq', 'fastq_trimming', 'per-base-quality.png'))

p2 <- readPNG(file.path(.get_course_path(), 'rna_seq', 'fastq_trimming', 'base-sequence-content.png'))

p3 <- readPNG(file.path(.get_course_path(), 'rna_seq', 'fastq_trimming', 'seq-len-distr.png'))

report_html <- file.path(get.course_path(), 'rna_seq', 'fastq_trimming', 'SRR11412215_fastqc.html')

# Function for local testing
#.get_course_path <- function() {'courses'}

