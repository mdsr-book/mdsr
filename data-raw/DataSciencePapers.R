# DataSciencePapers

library(aRxiv)
library(dplyr)
DataSciencePapers <- as.tbl(arxiv_search(query = '"Data Science"', limit = 200))

save(DataSciencePapers, file = "data/DataSciencePapers.rda", compress = "xz")
