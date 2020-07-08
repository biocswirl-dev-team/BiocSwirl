# compare raw and transformed count data
df <- bind_rows(
  data.frame((counts(dds, normalized=FALSE))[,1:2]) %>% mutate(transformation ="raw"),
  data.frame(assay(rlog_dds)[, 1:2]) %>% mutate(transformation = "rlog"))
colnames(df)[1:2] <- c("x", "y")  
lvls <- c("raw", "rlog")
df$transformation <- factor(df$transformation, levels=lvls)

plot1 <- ggplot((subset(df, transformation == "raw")), aes(x=x, y=y)) +
  geom_hex(bins = 80) +
  ggtitle("raw counts")

plot2 <- ggplot(subset(df, transformation == "rlog"), aes(x=x, y=y)) +
  geom_hex(bins = 80) + 
  ggtitle("rlog transformed counts")

print(plot_grid(plot1, plot2))

