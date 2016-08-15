# CIA data


# readr::read_csv("https://raw.githubusercontent.com/factbook/factbook.csv/master/categories.csv")

codes <- c("area" = 2147, "pop" = 2119, "oil_prod" = 2241, "gdp" = 2004, "educ" = 2206, "roadways" = 2085, "net_users" = 2153)
url <- paste0("https://www.cia.gov/library/publications/the-world-factbook/rankorder/rawdata_", codes, ".txt")

files <- lapply(url, read.fwf, widths = c(-7, 50, 40), stringsAsFactors = FALSE) %>%
  lapply(as.tbl)
names(files) <- names(codes)
lengths <- sapply(files, nrow)
# hack for numeric data
files[["educ"]]$V2 <- as.character(files[["educ"]]$V2)
CIACountries <- files %>% 
  bind_rows() %>%
  rename(country = V1, value = V2) %>%
  mutate(country = trimws(country), value = tidyr::extract_numeric(value),
         var_name = rep(names(codes), times = lengths)) %>%
  tidyr::spread(key = var_name, value = value) %>%
  mutate(net_users = net_users / pop, roadways = roadways / area, 
         net_users = cut(net_users, breaks = c(0, 0.05, 0.15, 0.35, 0.60, 1), 
                         labels = c(">0%", ">5%", ">15%", ">35%", ">60%")
                         )
         ) %>%
  na.omit()

filter(DataComputing::CountryData, country == "United States")
filter(CIACountries, country == "United States")

save(CIACountries, file = "data/CIACountries.rda")