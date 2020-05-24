#plotPCA(rlog_dds)

# below is the code that is behind plotPCA() as per the deseq2 github
# using and modifying this to be able to label legends for course to make wording less confusing

intgroup="condition"
ntop=500
returnData=FALSE
object=rlog_dds

rv <- rowVars(assay(object))

# select the ntop genes by variance
select <- order(rv, decreasing=TRUE)[seq_len(min(ntop, length(rv)))]

# perform a PCA on the data in assay(x) for the selected genes
pca <- prcomp(t(assay(object)[select,]))

# the contribution to the total variance for each component
percentVar <- pca$sdev^2 / sum( pca$sdev^2 )

if (!all(intgroup %in% names(colData(object)))) {
  stop("the argument 'intgroup' should specify columns of colData(dds)")
}

intgroup.df <- as.data.frame(colData(object)[, intgroup, drop=FALSE])

# add the intgroup factors together to create a new grouping factor
group <- if (length(intgroup) > 1) {
  factor(apply( intgroup.df, 1, paste, collapse=":"))
} else {
  colData(object)[[intgroup]]
}

# assembly the data for the plot
d <- data.frame(PC1=pca$x[,1], PC2=pca$x[,2], condition=group, intgroup.df, name=colnames(object))

if (returnData) {
  attr(d, "percentVar") <- percentVar[1:2]
  return(d)
}

plot1 <- ggplot(data=d, aes_string(x="PC1", y="PC2", color="condition")) + geom_point(size=3) + 
  xlab(paste0("PC1: ",round(percentVar[1] * 100),"% variance")) +
  ylab(paste0("PC2: ",round(percentVar[2] * 100),"% variance")) +
  coord_fixed()

print(plot1)

