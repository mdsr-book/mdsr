library(tidyverse)

# world_cities

wc_zip <- usethis::use_zip("https://download.geonames.org/export/dump/cities15000.zip", destdir = tempdir())

world_cities <- wc_zip %>%
  fs::path("cities15000.txt") %>%
  read_delim("\t", col_names = c("geonameid", "name", "asciiname", "alternatenames", "latitude", "longitude",
                                 "feature_class", "feature_code", "country_code", "cc2", 
                                 "admin1_code", "admin2_code", "admin3_code", "admin4_code", "population",
                                 "elevation", "dem", "timezone", "modification_date"))

world_cities <- world_cities %>%
  select(
    geoname_id = geonameid, name = asciiname, latitude, longitude, country = country_code, 
    country_region = admin1_code, population, 
    timezone, modification_date
  ) %>%
  filter(population > 1e5)

usethis::use_data(world_cities, overwrite = TRUE)
