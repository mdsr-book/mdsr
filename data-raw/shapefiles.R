# http://blog.rtwilson.com/john-snows-cholera-data-in-more-formats/
root <- path.expand(tempdir())
src <- "http://rtwilson.com/downloads/SnowGIS_SHP.zip"
lcl <- paste0(root, "snow_GIS.zip")
lcl_dir <- paste0(root, "snow")
download.file(src, destfile = lcl)
unzip(zipfile = lcl, exdir = lcl_dir)

library(rgdal)
dsn <- paste0(lcl_dir, "/SnowGIS_SHP/")
list.files(dsn)
ogrListLayers(dsn)
ogrInfo(dsn, layer = "Cholera_Deaths")

# Deaths
CholeraDeaths <- readOGR(dsn, layer = "Cholera_Deaths", verbose = FALSE)
class(CholeraDeaths)
summary(CholeraDeaths)

save(CholeraDeaths, file = "data/CholeraDeaths.rda", compress = "xz")

# Pumps
CholeraPumps <- readOGR(dsn, layer = "Pumps", verbose = FALSE)
class(CholeraPumps)
summary(CholeraPumps)

save(CholeraPumps, file = "data/CholeraPumps.rda", compress = "xz")

