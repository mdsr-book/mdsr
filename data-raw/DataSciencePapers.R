# DataSciencePapers

library(aRxiv)
library(dplyr)
DataSciencePapers <- as_tibble(arxiv_search(query = '"Data Science"', limit = 20000, batchsize = 100))


usethis::use_data(DataSciencePapers, overwrite = TRUE)
