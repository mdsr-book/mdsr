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
  src_mysql(dbname, host = "scidb.smith.edu", 
            user = "mth292", password = "RememberPi")
}

#' dbConnect_scidb
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
  dbConnect(MySQL(), dbname = dbname, host = "scidb.smith.edu", 
            user = "mth292", password = "RememberPi")
}