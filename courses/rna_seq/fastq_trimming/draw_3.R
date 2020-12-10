library(png)

plot.new()
lim <- par()
rasterImage(p3, lim$usr[1], lim$usr[3], lim$usr[2], lim$usr[4])

