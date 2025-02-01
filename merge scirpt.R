setwd(" folder location")

#input data
genes <- read.csv ("Significant genes heatmap.csv")

annot1 <- read.csv ("interproscan primary assembly.csv")

annot2 <- read.csv ("interproscan secondary assembly.csv")

effectors1 <- read.csv ("Effectors.csv")

effectors2 <- read.csv ("Effectors 2.csv")

install.packages("dplyr")
library("dplyr")


#merge
merged1 <- left_join(genes, annot1, by="gene_id")

merged2 <- left_join(genes, annot2, by="gene_id")

merged3 <- left_join(genes, effectors1, by="gene_id")

merged4 <- left_join(genes, effectors2, by="gene_id")


#write files
write.csv(merged1, "significant P genes annotated.csv")

write.csv(merged2, "significant H genes annotated.csv")
