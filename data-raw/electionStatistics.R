url <- "https://raw.githubusercontent.com/dtkaplan/DCF-2015/master/Book/Sections/Data/electionStatistics.csv"

electionStatistics <- read.csv(url)

electionStatistics <- as.tbl(read.csv("data-raw/electionStatistics.csv"))

save(electionStatistics, file = "data/electionStatistics.rda", compress = "xz")



url <- "https://raw.githubusercontent.com/dtkaplan/DCF-2015/master/Book/Sections/Data/Cherry-Blossom-Longitudinal.csv"

cherry <- read.csv(url)

cherry <- as.tbl(read.csv("data-raw/cherry.csv"))

save(cherry, file = "data/cherry.rda", compress = "xz")




