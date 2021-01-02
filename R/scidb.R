#' src_scidb
#' @description Connect to the scidb server on Amazon Web Services.
#' @param dbname the name of the database to which you want to connect
#' @param ... arguments passed to \code{\link[dbplyr]{src_dbi}} or \code{\link[DBI]{dbConnect}}
#' @details This is a public, read-only account. Any abuse will be considered a 
#' hostile act. 
#' @return For \code{\link{src_scidb}}, a \code{\link[dbplyr]{src_dbi}} object
#' @seealso \code{\link[dbplyr]{src_dbi}}
#' @export
#' @examples 
#' 
#' db_air <- src_scidb("airlines")
#' db_air

src_scidb <- function(dbname, ...) {
  dbplyr::src_dbi(dbConnect_scidb(dbname, ...))
}

#' @rdname src_scidb
#' @export
#' @return For \code{\link{dbConnect_scidb}}, a \code{\link[RMySQL]{MySQLConnection-class}} object
#' @seealso \code{\link[RMySQL]{MySQLConnection-class}}
#' @examples 
#' db_air <- dbConnect_scidb("airlines")
#' db_air
#' if (require(DBI)) {
#'   dbListTables(db_air)
#' }

dbConnect_scidb <- function(dbname, ...) {
  DBI::dbConnect(
    RMySQL::MySQL(), 
    dbname = dbname, 
    host = "mdsr.cdc7tgkkqd0n.us-east-1.rds.amazonaws.com", 
    user = "mdsr_public", 
    password = "ImhsmflMDSwR",
    ...)
}

#' @rdname src_scidb
#' @export
#' 
#' @return For \code{\link{mysql_scidb}}, a character vector of length 1 to be used
#' as an \code{engine.ops} argument, or on the command line. 
#' @seealso \code{\link[knitr]{opts_chunk}}
#' @examples 
#' 
#' if (require(knitr)) {
#'   opts_chunk$set(engine.opts = mysql_scidb("airlines"))
#' }

mysql_scidb <- function(dbname, ...) {
  paste("-h mdsr.cdc7tgkkqd0n.us-east-1.rds.amazonaws.com -u mdsr_public -pImhsmflMDSwR -t", dbname)
}