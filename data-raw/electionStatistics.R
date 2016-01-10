url <- "https://raw.githubusercontent.com/dtkaplan/DCF-2015/master/Book/Sections/Data/electionStatistics.csv"

Elections <- read.csv(url)

Elections <- as.tbl(read.csv("inst/extdata/electionStatistics.csv"))

save(Elections, file = "data/Elections.rda", compress = "xz")



url <- "https://raw.githubusercontent.com/dtkaplan/DCF-2015/master/Book/Sections/Data/Cherry-Blossom-Longitudinal.csv"

Cherry <- read.csv(url)

Cherry <- as.tbl(read.csv("inst/extdata/cherry.csv"))

save(Cherry, file = "data/Cherry.rda", compress = "xz")




