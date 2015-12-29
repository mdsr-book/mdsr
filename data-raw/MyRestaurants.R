# MyRestaurants

load("~/Dropbox/lib/mdsr/data/MyRestaurants.rda")

require(dplyr)
Cuisines <- as.tbl(Cuisines)
Restaurants <- as.tbl(Restaurants)

save(Cuisines, file = "data/Cuisines.rda", compress = "xz")
save(ViolationCodes, file = "data/ViolationCodes.rda", compress = "xz")
save(Restaurants, file = "data/Restaurants.rda", compress = "xz")
