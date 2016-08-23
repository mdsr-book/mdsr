# Elections
url <- "https://raw.githubusercontent.com/dtkaplan/DCF-2015/master/Book/Sections/Data/electionStatistics.csv"
download.file(url, destfile = "inst/extdata/electionStatistics.csv")

Elections <- readr::read_csv("inst/extdata/electionStatistics.csv")
save(Elections, file = "data/Elections.rda", compress = "xz")

# Cherry
url <- "https://raw.githubusercontent.com/dtkaplan/DCF-2015/master/Book/Sections/Data/Cherry-Blossom-Longitudinal.csv"
Cherry <- read.csv(url)
Cherry <- readr::read_csv("inst/extdata/cherry.csv")
save(Cherry, file = "data/Cherry.rda", compress = "xz")

# nciNetwork
url <- "https://raw.githubusercontent.com/dtkaplan/DCF-2015/master/Book/Sections/Data/nciNetwork.csv?token=ACpUw4Vh3a3YvWLDcGd9nLbnBX6ZiFUlks5XxNu_wA%3D%3D"
download.file(url, destfile = "inst/extdata/nciNetwork.csv")
Cancer <- readr::read_csv("inst/extdata/nciNetwork.csv")
save(Cancer, file = "data/Cancer.rda", compress = "xz")


# VotesS1-tally
# download.file("https://raw.githubusercontent.com/dtkaplan/DCF-2015/master/Book/Sections/Data/VotesS1-tally.csv", "inst/extdata/VotesS1-tally.csv")
Votes <- read.csv("inst/extdata/VotesS1-tally.csv", skip = 1) %>%
  rename(bill = VOTE) %>%
  tidyr::gather(key = "name", value = "vote", -bill) %>%
  mutate(name = gsub("\\.\\.", ", ", name)) %>%
  mutate(name = gsub("\\.", " ", name))
Encoding(levels(Votes$bill)) <- "latin1"
levels(Votes$bill) <- iconv(levels(Votes$bill), from = "latin1", to = "UTF-8")
Parties <- read.csv("inst/extdata/VotesS1-tally.csv",
                    header = FALSE, nrows = 2, row.names = 1, 
                    stringsAsFactors = FALSE) %>%
  t() %>%
  as.data.frame() %>%
  rename(party = PARTY, name = VOTE) %>%
  mutate(party = as.character(party), name = as.character(name)) %>%
  mutate(name = gsub("-", " ", name))
# check to see that all names match
setdiff(Parties$name, unique(Votes$name))
save(Votes, file = "data/Votes.rda", compress = "xz")
save(Parties, file = "data/Parties.rda", compress = "xz")



