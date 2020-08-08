# DataSciencePapers

library(aRxiv)
library(dplyr)
DataSciencePapers <- as.tbl(arxiv_search(query = '"Data Science"', limit = 20000, batchsize = 100))

save(DataSciencePapers, file = "data/DataSciencePapers.rda", compress = "xz")
