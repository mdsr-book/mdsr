# Macbeth

macbeth_url <- "http://www.gutenberg.org/cache/epub/1129/pg1129.txt"
library(RCurl)
macbeth_raw <- getURL(macbeth_url)
save(macbeth_raw, file = "data/macbeth_raw.rda", compress = "xz")
