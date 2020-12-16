
library(tidyverse)

saratoga_houses <- read_csv(here::here("data-raw", "houses-for-sale.csv"))

usethis::use_data(saratoga_houses, overwrite = TRUE)


saratoga_codes <- read_csv(here::here("data-raw", "house_codes.csv"))

usethis::use_data(saratoga_codes, overwrite = TRUE)
