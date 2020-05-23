library(png)

p1 <- readPNG(file.path(.get_course_path(), 'rna_seq', 'fastq_trimming', 'per-base-quality.png'))

plot.new()
lim <- par()
rasterImage(p1, lim$usr[1], lim$usr[3], lim$usr[2], lim$usr[4])
