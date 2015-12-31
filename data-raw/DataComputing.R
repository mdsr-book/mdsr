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

# MedicareCharges
download.file("https://github.com/DataComputing/DataComputing/raw/master/data/MedicareCharges.rda", "data/MedicareCharges.rda")
cat(create_roxygen(parse_file("https://raw.githubusercontent.com/DataComputing/DataComputing/master/man/MedicareCharges.Rd")), sep = "\n")


# MedicareProviders
download.file("https://github.com/DataComputing/DataComputing/raw/master/data/MedicareProviders.rda", "data/MedicareProviders.rda")
cat(create_roxygen(parse_file("https://raw.githubusercontent.com/DataComputing/DataComputing/master/man/MedicareProviders.Rd")), sep = "\n")

# NCI for graph
Cancer <- read.csv("inst/extdata/nciNetwork.csv")
save(Cancer, file = "data/Cancer.rda", compress = "xz")
download.file("https://github.com/DataComputing/DataComputing/raw/master/R/NetworkHelpers.R", "R/NetworkHelpers.R")

