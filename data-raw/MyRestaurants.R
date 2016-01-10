# MyRestaurants

# df <- read.socrata("https://data.cityofnewyork.us/resource/fhrw-4uyv.csv?$where=date_trunc_ymd(created_date)='2015-03-18'")
url <- "https://data.cityofnewyork.us/api/views/xx67-kt59/rows.csv?accessType=DOWNLOAD"
download.file(url, "data-raw/dohmh_nyc_violations.csv")

require(readr)
require(dplyr)
violations <- readr::read_csv("data-raw/dohmh_nyc_violations.csv")
# problems
violations %>%
  problems() %>%
  group_by(col) %>%
  summarize(N = n())

# fix variable names
names(violations) <- names(violations) %>%
  tolower() %>%
  gsub(" ", "_", x = .)

# non-standard spellings?
violations <- violations %>%
  mutate(cuisine_description = ifelse(grepl("Coffee/Tea", cuisine_description), "Cafe/Coffee/Tea", cuisine_description))
# Cafe/Coffee/Tea

# set encoding for non-ASCII character
tools::showNonASCII(violations$cuisine_description)
# x <- as.character(violations$cuisine_description)
# Encoding(x) <- "latin1"
# y <- iconv(x, from = "latin1", to = "ASCII", sub = "e")
# violations$cuisine_description <- x

# note that other columns have UTF characters
bad <- apply(violations, MARGIN = 2, tools::showNonASCII)
str(bad)

# Lookup table for violations
ViolationCodes <- violations %>%
  group_by(violation_code) %>%
  summarize(critical_flag = first(critical_flag)
            , violation_description = first(violation_description))

# Lookup table for Cuisines?
violations <- violations %>%
  mutate(cuisine_code = as.factor(cuisine_description))

Cuisines <- as.tbl(data.frame(cuisine_code = 1:length(levels(violations$cuisine_code))
                       , cuisine_description = levels(violations$cuisine_code)))

library(lubridate)
Violations <- violations %>%
  mutate(cuisine_code = as.numeric(cuisine_code)) %>%
  select(-cuisine_description, -violation_description, -critical_flag) %>%
  mutate(inspection_date = mdy(inspection_date)) %>% 
  mutate(grade_date = mdy(grade_date)) %>%
  mutate(record_date = mdy(record_date))


save(Cuisines, file = "data/Cuisines.rda", compress = "xz")
save(ViolationCodes, file = "data/ViolationCodes.rda", compress = "xz")
save(Violations, file = "data/Violations.rda", compress = "xz")
