# https://blog.rtwilson.com/john-snows-cholera-data-in-more-formats/
src <- "https://rtwilson.com/downloads/SnowGIS_SHP.zip"
dsn <- usethis::use_course(src, destdir = tempdir())

list.files(dsn)
library(sf)
st_layers(dsn)

# Deaths
CholeraDeaths <- st_read(dsn, layer = "Cholera_Deaths")
class(CholeraDeaths)

save(CholeraDeaths, file = "data/CholeraDeaths.rda", compress = "xz")

# Pumps
CholeraPumps <- st_read(dsn, layer = "Pumps")
class(CholeraPumps)

save(CholeraPumps, file = "data/CholeraPumps.rda", compress = "xz")

