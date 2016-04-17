# http://blog.rtwilson.com/john-snows-cholera-data-in-more-formats/
root <- path.expand(tempdir())
src <- "http://rtwilson.com/downloads/SnowGIS_SHP.zip"
lcl <- paste0(root, "snow_GIS.zip")
lcl_dir <- paste0(root, "snow")
download.file(src, destfile = lcl)
unzip(zipfile = lcl, exdir = lcl_dir)

