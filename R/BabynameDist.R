globalVariables(c("x", "lx", "ex", "year", "sex", "age_today", "alive_prob", "life_exp", "y"))

#' Wrangle babynames data
#' @import dplyr
#' @export
#' @return a \code{\link[dplyr]{tbl_df}} similar to \code{\link[babynames]{babynames}}
#' with a column for the estimated number of people alive in 2014.
#' @examples 
#' 
#' BabynameDist <- make_babynames_dist()
#' if (require(dplyr)) {
#'   BabynameDist %>%
#'     filter(name == "Benjamin")
#' }

make_babynames_dist <- function() {
  actuarial <- babynames::lifetables %>%
    dplyr::mutate(
      age_today = x, 
      alive_prob = lx / 100000, 
      more_years = ex, 
      life_exp = x + ex
    ) %>%
    dplyr::filter(year + x == 2014) %>%
    dplyr::select(year, sex, age_today, alive_prob, life_exp)
  
  # Unfortunately, the actuarial tables only contain entries for people born each decade, not each year. 
  # Following FiveThirtyEight's lead we will linearly interpolate the missing values using the \func{approx} function. 
  
  years <- min(actuarial$year):max(actuarial$year)
  men <- actuarial %>%
    dplyr::filter(sex == "M") %>%
    approximate(years = years)
  women <- actuarial %>%
    dplyr::filter(sex == "F") %>%
    approximate(years = years)
  actuarial_interp <- dplyr::bind_rows(men, women)
  actuarial_interp <- actuarial_interp %>%
    dplyr::rename(year = x, alive_prob = y) %>%
    dplyr::mutate(sex = c(rep("M", length(years)), rep("F", length(years))))
  
  # Finally, we will construct the data set that we need by joining the actuarial information with the baby names data. 
  
  BabynameDist <- babynames::babynames %>%
    dplyr::inner_join(actuarial_interp, by = c("year", "sex")) %>%
    dplyr::mutate(
      count_thousands = n / 1000, 
      age_today = 2014 - year, 
      est_alive_today = n * alive_prob
    )
}

approximate <- function(data, years) {
  stats::approx(data$year, data$alive_prob, xout = years) %>%
    as.data.frame()
}


