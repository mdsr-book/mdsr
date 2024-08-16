#' Load the NCI60 data from GitHub
#' @export
#' @returns A [tibble::tbl_df]
#' @examples 
#' 
#' \donttest{
#' # The file is 5.0 MB
#' NCI60 <- etl_NCI60()
#' }

etl_NCI60 <- function() {
  NCI60 <- data.frame()
  dir <- tempdir()
  lcl <- file.path(dir, "NCI60.rda")
  downloader::download(
    "https://github.com/mdsr-book/mdsr/blob/master/data-raw/NCI60.rda?raw=true", 
    destfile = lcl
  )
  load(lcl)
  return(tibble::as_tibble(NCI60))
}