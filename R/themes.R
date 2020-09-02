#' MDSR themes
#' 
#' @description Graphical themes used in MDSR book
#' 
#' @inheritParams ggplot2::theme_grey
#' @importFrom ggplot2 %+replace%
#' @export
#' @examples 
#' if (require(ggplot2)) {
#'   p <- ggplot(mtcars, aes(x = hp, y = mpg, color = factor(cyl))) + 
#'     geom_point() + facet_wrap(~ am) + geom_smooth()
#'   p + theme_grey()
#'   p + theme_mdsr()
#'  }

theme_mdsr <- function(base_size = 12, base_family = "Bookman") {
  ggplot2::theme_grey(base_size = base_size, base_family = base_family) %+replace%
    ggplot2::theme(
      axis.text        = ggplot2::element_text(size = ggplot2::rel(0.8)),
      axis.ticks       = ggplot2::element_line(colour = "black"), 
      legend.key       = ggplot2::element_rect(colour = "grey80"),
      panel.background = ggplot2::element_rect(fill = "whitesmoke", colour = NA),
      panel.border     = ggplot2::element_rect(fill = NA, colour = "grey50"),
      panel.grid.major = ggplot2::element_line(colour = "grey80", size = 0.2),
      panel.grid.minor = ggplot2::element_line(colour = "grey92", size = 0.5),
      strip.background = ggplot2::element_rect(fill = "grey80", colour = "grey50", size = 0.2)
    )
}

#' Custom skimmer
#' @export
#' @importFrom skimr skim
#' @inheritParams skimr::skim
#' @examples
#' skim(faithful)

skim <- function(data, ...) {
  my_skim <- skimr::skim_with(
    base = skimr::sfl(
      n = length,
      missing = skimr::n_missing
    ), 
    numeric = skimr::sfl(
      hist = NULL
    )
  )
  my_skim(data, ...) %>%
    skimr::yank("numeric") %>%
    dplyr::rename(
      var = skim_variable,
      na = missing
    )
}

globalVariables("skim_variable")