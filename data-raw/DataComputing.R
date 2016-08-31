library(Rd2roxygen)
library(mosaic)

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

# WorldCities
download.file("https://github.com/DataComputing/DataComputing/raw/master/data/WorldCities.rda", "data/WorldCities.rda")
cat(create_roxygen(parse_file("https://raw.githubusercontent.com/DataComputing/DataComputing/master/man/WorldCities.Rd")), sep = "\n")
load("data/WorldCities.rda")
Encoding(WorldCities$name) <- "latin1"
WorldCities$name <- iconv(WorldCities$name, from = "latin1", to = "UTF-8")
save(WorldCities, file = "data/WorldCities.rda", compress = "xz")

# NCI60 -- 5 MB file so put it in a different place
download.file("https://github.com/DataComputing/DataComputing/raw/master/data/NCI60.rda", "data-raw/NCI60.rda")
load("data-raw/NCI60.rda")
NCI60_tiny <- head(NCI60)
save(NCI60_tiny, file = "data/NCI60_tiny.rda", compress = "xz")
cat(create_roxygen(parse_file("https://raw.githubusercontent.com/DataComputing/DataComputing/master/man/NCI60.Rd")), sep = "\n")
