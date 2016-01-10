# Macbeth

macbeth_url <- "http://www.gutenberg.org/cache/epub/1129/pg1129.txt"
library(RCurl)
Macbeth_raw <- getURL(macbeth_url)
save(Macbeth_raw, file = "data/Macbeth_raw.rda", compress = "xz")
