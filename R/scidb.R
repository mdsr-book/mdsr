#' src_scidb
#' @description Connect to the scidb server on Amazon Web Services.
#' @param dbname the name of the database to which you want to connect
#' @param ... arguments passed to [dbplyr::src_dbi()] or [DBI::dbConnect()]
#' @details This is a public, read-only account. Any abuse will be considered a 
#' hostile act. 
#' 
#' The MariaDB server accessible via these functions is a db.t3.micro RDS 
#' instance hosted by Amazon Web Services. 
#' It is NOT a powerful server, having only 2 CPUs, 1 GB of RAM, and 20 GB of 
#' disk space. 
#' It is useful for quick, efficient and no-stress setup, but not useful for any
#' kind of serious computing. 
#' 
#' The `airlines` database on the server contains complete flight records for
#' the three years between 2013 and 2015, which contains about 6 million rows
#' annually. 
#' Thus, the `flights` table contains approximately 18 million rows. 
#' The `flights` table has several indexes, including an indices on `year`, 
#' `origin`, `dest`, `carrier`, and `tailnum`. 
#' There is also a composite index on the date (across `year`, `month`, and `day`).
#' Please use these indexes to improve query response times. 
#' 
#' There are two databases on this server:
#' 
#' - `airlines`: The structure of the database is similar to what you find in 
#' the `nycflights13` and `nycflights23` packages. See their documentation at
#' [nycflights13::flights] and [nycflights23::airports], for example. 
#' - `imdb`: These data were retrieved from an old dump of the Internet Movie
#' Database, circa 2016. Please see this [ER diagram](https://i.sstatic.net/vJBfk.png)
#' for relationships between the tables. 
#' @return For [src_scidb()], a [dbplyr::src_dbi] object
#' @seealso [dbplyr::src_dbi()], [nycflights13::flights], [nycflights23::airlines]
#' @export
#' @source 
#'   - `airlines`: <https://www.transtats.bts.gov/Fields.asp?gnoyr_VQ=FGJ>
#'   - `imdb`: <https://developer.imdb.com/non-commercial-datasets/>
#' @examples 
#' \donttest{
#' # Connect to the database instance via `dplyr`
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
#' \donttest{
#' # Connect to the database instance via `DBI` (recommended)
#' db_air <- dbConnect_scidb("airlines")
#' db_air
#' 
#' # Get more information...
#' if (require(DBI)) {
#' 
#'   # About the database instance
#'   dbGetInfo(db_air)
#'   
#'   # About the available tables
#'   dbListTables(db_air)
#'   
#'   # About the variables in a particular table
#'   dbListFields(db_air, "flights")
#'   
#'   # About the indexes (using raw SQL)
#'   dbGetQuery(db_air, "SHOW KEYS FROM flights")
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
