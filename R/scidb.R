#' src_scidb
#' @description Connect to the scidb server on Amazon Web Services.
#' @param dbname the name of the database to which you want to connect
#' @param ... arguments passed to [dbplyr::src_dbi()] or [DBI::dbConnect()]
#' @details This is a public, read-only account. Any abuse will be considered a 
#' hostile act. 
#' @return For [src_scidb()], a [dbplyr::src_dbi] object
#' @seealso [dbplyr::src_dbi()]
#' @export
#' @examples 
#' \dontrun{
#' db_air <- src_scidb("airlines")
#' db_air
#' }

src_scidb <- function(dbname, ...) {
  dbplyr::src_dbi(dbConnect_scidb(dbname, ...))
}

#' @rdname src_scidb
#' @export
#' @return For [dbConnect_scidb()], a [RMariaDB::MariaDBConnection-class] object
#' @seealso [RMariaDB::MariaDBConnection-class]
#' @examples 
#' \dontrun{
#' db_air <- dbConnect_scidb("airlines")
#' db_air
#' if (require(DBI)) {
#'   dbListTables(db_air)
#' }
#' }

dbConnect_scidb <- function(dbname, ...) {
  DBI::dbConnect(
    RMariaDB::MariaDB(), 
    dbname = dbname, 
    host = "mdsr.crcbo51tmesf.us-east-2.rds.amazonaws.com", 
    user = "mdsr_public", 
    password = "ImhsmflMDSwR",
    ...)
}

#' @rdname src_scidb
#' @export
#' 
#' @return For [mysql_scidb()], a character vector of length 1 to be used
#' as an `engine.ops` argument, or on the command line. 
#' @seealso [knitr::opts_chunk()]
#' @examples 
#' 
#' if (require(knitr)) {
#'   opts_chunk$set(engine.opts = mysql_scidb("airlines"))
#' }

mysql_scidb <- function(dbname, ...) {
  paste("-h mdsr.crcbo51tmesf.us-east-2.rds.amazonaws.com -u mdsr_public -pImhsmflMDSwR -t", dbname)
}

summarize_scidb <- function() {
  db <- dbConnect_scidb("airlines")
  
  db |>
    DBI::dbGetQuery(
      "SELECT year, COUNT(*) AS num_flights 
       FROM airlines.flights GROUP BY year;"
    )
  db |>
    DBI::dbGetQuery(
      "SELECT production_year, COUNT(*) AS num_movies 
      FROM imdb.title GROUP BY production_year;"
    )
}
