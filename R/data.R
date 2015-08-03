#' Data about recent major league baseball teams
#' 
#' A dataset containing information about Major League Baseball teams 
#' from 2008-2013. 
#' 
#' @format A \code{\link{tbl_df}} object. 
#' \describe{
#'  \item{yearID}{season in which the team played}
#'  \item{teamID}{the team's three character identifier}
#'  \item{lgID}{the league in which the team played}
#'  \item{W}{number of wins}
#'  \item{L}{number of losses}
#'  \item{WPct}{winning percentage}
#'  \item{attendance}{number of fans in attendance}
#'  \item{normAttend}{number of fans in attendance, relative to the team with
#'  the highest attendance in this sample (the 2008 New York Yankees)}
#'  \item{payroll}{the sum of the salaries of the players on each team. Note
#'  that this number is only an estimate of the actual team payroll -- and may
#'  not even be a very good one. Salaries are accumulated from \code{\link[Lahman]{Salaries}}}
#'  \item{metroPop}{the size of the team's home city's metropolitan population, according
#'  to Wikipedia and the 2010 US Census}
#'  \item{name}{the full name of the team}
#' }
#' 
#' @seealso \code{\link[Lahman]{Teams}}
#' 
#' @source The \code{\link[Lahman]{Teams}} data set and \url{https://en.wikipedia.org/wiki/List_of_Metropolitan_Statistical_Areas}
#' 
"bbteams" 


