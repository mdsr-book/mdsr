#' Load the NCI60 data from GitHub
#' @export
#' @examples 
#' 
#' \dontrun{
#' NCI60 <- etl_NCI60()
#' }

etl_NCI60 <- function() {
  NCI60 <- data.frame()
  dir <- tempdir()
  lcl <- file.path(dir, "NCI60.rda")
  downloader::download(
    "https://github.com/beanumber/mdsr/blob/master/data-raw/NCI60.rda?raw=true", 
    destfile = lcl
  )
  load(lcl)
  return(dplyr::as.tbl(NCI60))
}