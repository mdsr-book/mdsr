library(plyr)
# options(download.file.method="curl")
setwd("~/Desktop/AirlineDelays2013-07")
base <- "http://www.transtats.bts.gov/Download/On_Time_On_Time_Performance_"
year <- 2012:2014
month <- 1:12

grid <- expand.grid(year, "_", month, ".zip", KEEP.OUT.ATTRS = FALSE)
grid[] <- lapply(grid, as.character)
paths <- apply(grid, 1, paste, collapse="", sep="")

paths.df <- data.frame(
  url = paste(base, paths, sep = ""),
  destfile = paste("data/", paths, sep = ""),
  stringsAsFactors = FALSE
)
m_ply(paths.df, download.file, .progress = "text")

library(plyr)
setwd("~/Desktop/AirlineDelays2013-07/")

vars <- c("Year", "Month", "DayofMonth", "DayOfWeek", "DepTime", "CRSDepTime", "ArrTime", "CRSArrTime", "UniqueCarrier" , "FlightNum", "TailNum", "ActualElapsedTime", "CRSElapsedTime", "AirTime", "ArrDelay", "DepDelay", "Origin", "Dest", "Distance", "TaxiIn", "TaxiOut", "Cancelled", "CancellationCode", "Diverted", "CarrierDelay", "WeatherDelay", "NASDelay", "SecurityDelay", "LateAircraftDelay")

reduce <- function(path, year, first = FALSE) {
  input <- read.csv(path)[vars]
  output <- paste("yearly/", year, ".csv", sep = "")
  write.table(input, file = output, quote=F, sep=",", na = "NULL", row=F, col=first, append = !first)
}



reduce_year <- function(year) {
  cat("Reducing", year, "\n")
  
  system(paste("unzip -n \"data/", year, "*.zip\" -d data", sep=""))
  
  files <- dir("data", pattern = "\\.(zip|csv)", full.name=T)
  
  new_name <- gsub("On_Time_On_Time_Performance_", "", files)
  new_name <- gsub("_([0-9])\\.", "_0\\1.", new_name)
  
  mv <- paste("mv", files, new_name)[new_name != files]
  l_ply(mv, system)
  
  csv <- dir("data", pattern = paste("^", year, "_[0-9]{2}\\.csv$", sep=""), full = TRUE)
  
  reduce(csv[1], year, first = TRUE)
  l_ply(csv[-1], reduce, year = year, .progress="text")
  
  # l_ply(paste("rm", csv), system)
  # system(paste("bzip2 yearly/", year, ".csv", sep=""))
}

l_ply(2014:2014, reduce_year)
