plot(x=res$log2FoldChange, y=-log2(res$padj), xlab="log2FoldChange", ylab="-log2(adjusted p-value)", pch=16)
abline(h=0.1)
abline(v=c(-1,1))