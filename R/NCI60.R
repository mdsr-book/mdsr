
#' Load the NCI60 data from GitHub
#' 
#' @export
#' @examples 
#' 
#' NCI60 <- etl_NCI60()

etl_NCI60 <- function() {
  dir <- tempdir()
  lcl <- file.path(dir, "NCI60.rda")
  download.file("https://github.com/beanumber/mdsr/raw/master/data-raw/NCI60.rda", 
                destfile = lcl)
  load(lcl)
  return(as.tbl(NCI60))
}