# MyRestaurants

load("~/Dropbox/lib/mdsr/data/MyRestaurants.rda")

require(dplyr)
Cuisines <- as.tbl(Cuisines)
names(Cuisines) <- c("cuisine_code", "cuisine_description")
# set encoding for non-ASCII character
tools::showNonASCII(Cuisines$cuisine_description)
x <- as.character(Cuisines$cuisine_description)
Encoding(x) <- "latin1"
#y <- iconv(x, from = "latin1", to = "ASCII", sub = "e")
Cuisines$cuisine_description <- x

# note that other columns have UTF characters
bad <- apply(Restaurants, MARGIN = 2, tools::showNonASCII)
str(bad)

names(ViolationCodes) <- c("violation_code", "critical_flag", "violation_description")
Restaurants <- as.tbl(Restaurants)
names(Restaurants) <- c("camis", "DBA", "boro", "building"
                        , "street", "zip", "phone", "cuisine_code"
                        , "inspection_date", "action", "violation_code"
                        , "score", "current_grade", "grade_date", "record_date")

save(Cuisines, file = "data/Cuisines.rda", compress = "xz")
save(ViolationCodes, file = "data/ViolationCodes.rda", compress = "xz")
save(Restaurants, file = "data/Restaurants.rda", compress = "xz")
