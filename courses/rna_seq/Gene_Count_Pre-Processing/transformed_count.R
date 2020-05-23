# compare raw and transformed count data
df <- bind_rows(
  as_data_frame((counts(dds, normalized=FALSE))[,1:2]) %>% mutate(transformation ="raw"),
  as_data_frame(assay(rlog_dds)[, 1:2]) %>% mutate(transformation = "rlog"))
colnames(df)[1:2] <- c("x", "y")  
lvls <- c("raw", "rlog")
df$transformation <- factor(df$transformation, levels=lvls)
par(mfrow=c(1,2))
plot1 <- ggplot((subset(df, transformation == "raw")), aes(x=x, y=y)) +
  geom_hex(bins = 80) +
  ggtitle("raw counts")

plot2 <- ggplot(subset(df, transformation == "rlog"), aes(x=x, y=y)) +
  geom_hex(bins = 80) + 
  ggtitle("rlog transformed counts")

plot_grid(plot1, plot2)