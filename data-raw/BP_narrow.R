library(tidyverse)

BP_full <- readr::read_delim("data-raw/BP_full.csv", delim = "|")

BP_narrow <- BP_full |>
  distinct(subject, when, .keep_all = TRUE) |>
  select(subject, when, sbp) |>
  arrange(desc(when), subject)

BP_wide <- BP_narrow |>
  pivot_wider(names_from = when, values_from = sbp) |>
  select(subject, before, after)

usethis::use_data(BP_narrow, overwrite = TRUE)
usethis::use_data(BP_wide, overwrite = TRUE)

