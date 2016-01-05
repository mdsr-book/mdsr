# DataSciencePapers

library(aRxiv)
DataSciencePapers <- arxiv_search(query = '"Data Science"', limit = 200)

save(DataSciencePapers, file = "data/DataSciencePapers.rda", compress = "xz")
