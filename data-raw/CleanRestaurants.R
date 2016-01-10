# Clean up the restaurant data

load("Restaurants.rda")

require(lubridate)

# returns string w/o leading whitespace
trim.leading <- function (x)  sub("^\\s+", "", x)

# returns string w/o trailing whitespace
trim.trailing <- function (x) sub("\\s+$", "", x)

# returns string w/o leading or trailing whitespace
trim <- function (x) gsub("^\\s+|\\s+$", "", x)

trimQuotes <- function(s) {
  gsub("^\"|\"$", "", s)
}

trimAll <- function(s){
  trim( trimQuotes( trim(s)))
}

Restaurants <- 
  Restaurants  %>%
  mutate( CAMIS=trimAll(CAMIS),
          BUILDING=trimAll(BUILDING),
          STREET=trimAll(STREET),
          PHONE=as.integer( trimAll(PHONE) ),
          BORO=as.integer(trimAll(BORO)),
          BORO=ifelse( BORO<=5, BORO, NA),
          ZIPCODE=trimAll(ZIPCODE),
          ACTION=trimAll(ACTION),
          ACTION=ifelse( grepl("[A-Z]", ACTION),
                  ACTION,
                  NA ),
          SCORE=as.numeric(trimAll(SCORE)),
          CURRENTGRADE=trimAll(CURRENTGRADE),
          VIOLCODE=trimAll(VIOLCODE),
          CURRENTGRADE=ifelse(
            CURRENTGRADE %in% c("A","B","C","D","N","P"),
            CURRENTGRADE, NA ),
          CUISINECODE=as.integer(trimAll(CUISINECODE)),
          CUISINECODE=ifelse(CUISINECODE>99,NA,CUISINECODE),
          INSPDATE=ymd_hms(INSPDATE),
          GRADEDATE=ymd_hms(GRADEDATE),
          RECORDDATE=ymd_hms(RECORDDATE))