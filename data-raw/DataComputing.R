library(Rd2roxygen)
# CountryData
download.file("https://github.com/DataComputing/DataComputing/raw/master/data/CountryData.rda", "data/CountryData.rda")
cat(create_roxygen(parse_file("https://raw.githubusercontent.com/DataComputing/DataComputing/master/man/CountryData.Rd")), sep = "\n")

load("data/CountryData.rda")

library(mosaic)
CountryData2 <- CountryData %>%
  mutate(nu = ntiles( round(100*netUsers / pop), n = 5, digits = 1, format = "left")) %>%
  mutate(net_users = factor((nu), labels = c(">0%", ">5%", ">15%", ">35%", ">60%"))) %>% 
  mutate(GDP = round(GDP/pop,2), roadways = round(roadways/area, 2)) %>%
  rename(gdp = GDP) %>%
  mutate(oilProd2 = cut(sqrt(oilProd), 
                        breaks = sqrt(c(0,1000,10000,100000,1000000,5000000,Inf)),
                        labels = c("<1k","<10k","<100k","<1000k","<5000k", "more"))
  ) %>%
  select(country,gdp,educ,roadways,net_users, oilProd2) %>% 
  na.omit()

save("CountryData2", file = "data/CountryData2.rda", compress = "xz")

# MedicareProviders
download.file("https://github.com/DataComputing/DataComputing/raw/master/data/MedicareProviders.rda", "data/MedicareProviders.rda")
cat(create_roxygen(parse_file("https://raw.githubusercontent.com/DataComputing/DataComputing/master/man/MedicareProviders.Rd")), sep = "\n")

# MedicareCharges
download.file("https://github.com/DataComputing/DataComputing/raw/master/data/MedicareCharges.rda", "inst/extdata/MedicareCharges.RData")
load("inst/extdata/MedicareCharges.RData")
MedicareCharges <- MedicareCharges %>%
  inner_join(MedicareProviders, by = "idProvider") %>%
  group_by(drg, stateProvider) %>%
  summarize(num_charges = n(), mean_charge = mean(aveCharges, na.rm = TRUE))
save(MedicareCharges, file = "data/MedicareCharges.rda", compress = "xz")

cat(create_roxygen(parse_file("https://raw.githubusercontent.com/DataComputing/DataComputing/master/man/MedicareCharges.Rd")), sep = "\n")

# OrdwayBirds
download.file("https://github.com/DataComputing/DataComputing/raw/master/data/OrdwayBirds.rda", "data/OrdwayBirds.rda")
cat(create_roxygen(parse_file("https://raw.githubusercontent.com/DataComputing/DataComputing/master/man/OrdwayBirds.Rd")), sep = "\n")
load("data/OrdwayBirds.rda")
save(OrdwayBirds, file = "data/OrdwayBirds.rda", compress = "xz")

# Minneapolis2013
download.file("https://github.com/DataComputing/DataComputing/raw/master/data/Minneapolis2013.rda", "data/Minneapolis2013.rda")
cat(create_roxygen(parse_file("https://raw.githubusercontent.com/DataComputing/DataComputing/master/man/Minneapolis2013.Rd")), sep = "\n")
load("data/Minneapolis2013.rda")
save(Minneapolis2013, file = "data/Minneapolis2013.rda", compress = "xz")


# NCI for graph
Cancer <- read.csv("inst/extdata/nciNetwork.csv")
save(Cancer, file = "data/Cancer.rda", compress = "xz")
download.file("https://github.com/DataComputing/DataComputing/raw/master/R/NetworkHelpers.R", "R/NetworkHelpers.R")

# WorldCities
download.file("https://github.com/DataComputing/DataComputing/raw/master/data/WorldCities.rda", "data/WorldCities.rda")
cat(create_roxygen(parse_file("https://raw.githubusercontent.com/DataComputing/DataComputing/master/man/WorldCities.Rd")), sep = "\n")
load("data/WorldCities.rda")
Encoding(WorldCities$name) <- "latin1"
WorldCities$name <- iconv(WorldCities$name, from = "latin1", to = "UTF-8")
save(WorldCities, file = "data/WorldCities.rda", compress = "xz")

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
