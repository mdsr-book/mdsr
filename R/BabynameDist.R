#' Wrangle babynames data
#' @import dplyr
#' @import babynames
#' @export
#' @return a \code{\link[dplyr]{tbl_df}} similar to \code{\link[babynames]{babynames}}
#' with a column for the estimated number of people alive in 2014.
#' @examples 
#' 
#' BabynameDist <- make_babynames_dist()
#' BabynameDist %>%
#'   filter(name == "Benjamin")
#' 

make_babynames_dist <- function() {
  actuarial <- babynames::lifetables %>%
    mutate(age_today = x, 
           alive_prob = lx / 100000, 
           more_years = ex, 
           life_exp = x + ex) %>%
    filter(year + x == 2014) %>%
    select(year, sex, age_today, alive_prob, life_exp)
  
  years <- min(actuarial$year):max(actuarial$year)
  men <- actuarial %>%
    filter(sex == "M") %>%
    with(approx(year, alive_prob, xout = years)) %>%
    as.data.frame()
  women <- actuarial %>%
    filter(sex == "F") %>%
    with(approx(year, alive_prob, xout = years)) %>%
    as.data.frame()
  actuarial_interp <- bind_rows(men, women)
  actuarial_interp <- actuarial_interp %>%
    rename(year = x, alive_prob = y) %>%
    mutate(sex = c(rep("M", length(years)), rep("F", length(years))))
  
  BabynameDist <- babynames::babynames %>%
    inner_join(actuarial_interp, by = c("year", "sex")) %>%
    mutate(count_thousands = n / 1000, 
           age_today = 2014 - year, 
           est_alive_today = n * alive_prob)
  
}


