#' src_scidb
#' 
#' @description Connect to the scidb server at Smith
#' 
#' @param dbname the name of the database to which you want to connect
#' @param ... arguments passed to \code{\link[dplyr]{src_mysql}} or \code{\link[DBI]{dbConnect}}
#' 
#' @details this is a public, read-only account. Any abuse will be considered a 
#' hostile act. 
#' 
#' @return For \code{\link{src_mysql}}, a \code{\link[dplyr]{src_mysql}} object
#' 
#' @seealso \code{\link[dplyr]{src_mysql}}
#' 
#' @importFrom dplyr src_mysql
#' @importFrom RMySQL MySQL
#' @export
#' 
#' @examples 
#' 
#' dbAir <- src_scidb("airlines")
#' dbAir

src_scidb <- function(dbname, ...) {
  dplyr::src_mysql(dbname, host = "scidb.smith.edu", 
                   user = "mth292", password = "RememberPi")
}

#' Create a DBI connection to the scidb server at Smith
#' 
#' @rdname src_scidb
#' @export
#'  
#' @importFrom DBI dbConnect
#' @importFrom RMySQL MySQL
#' 
#' @return For \code{\link{dbConnect_scidb}}, a \code{\link[DBI]{DBIConnection-class}} object
#' 
#' @seealso \code{\link[DBI]{DBIConnection-class}}
#' @examples 
#' 
#' dbAir <- dbConnect_scidb("airlines")
#' dbAir

dbConnect_scidb <- function(dbname, ...) {
  dbConnect(RMySQL::MySQL(), dbname = dbname, host = "scidb.smith.edu", 
            user = "mth292", password = "RememberPi")
}

#' Create a string of arguments for the scidb server at Smith to be used on the
#' command line
#' 
#' @rdname src_scidb
#' @export
#' 
#' @return For \code{\link{mysql_scidb}}, a charcter vector of length 1 to be used
#' as an \code{engine.ops} argument, or on the command line. 
#' 
#' @seealso \code{\link[knitr]{opts_chunk}}
#' @examples 
#' 
#' library(knitr)
#' opts_chunk$set(engine.opts = mysql_scidb("airlines"))

mysql_scidb <- function(dbname, ...) {
  paste("-h scidb.smith.edu -u mth292 -pRememberPi -t", dbname)
}