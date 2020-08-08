#' Replacements for LaTeX macros
#' @name macros
#' @export
#' @param x text to wrap in macro
#'
func <- function(x) {
  index_entry('R functions', x)
  paste0("`", x, "()`")
}

#' @rdname macros
#' @export
argument <- function(x) {
  index_entry('R', x)
  paste0("`", x, "`")
}

#' @rdname macros
#' @export
variable <- function(x) {
  index_entry('R', x)
  paste0("`", x, "`")
}

#' @rdname macros
#' @export
pkg <- function(x) {
  index_entry('R packages', x)
  paste0("**", x, "**")
  # add citation?
}

#' @rdname macros
#' @export
mdsr_data <- function(x) {
  index_entry('Data Sets', x)
  paste0("`", x, "`")
}

#' @rdname macros
#' @export
person <- function(x) {
  index_entry('subject', x)
  x
}

#' @rdname macros
#' @export
vocab <- function(x) {
  index_entry('subject', x)
  paste0("[*", x, "*](https://en.wikipedia.org/w/index.php?search=", x, ")")
}

#' @rdname macros
#' @param index_label the name of the index
#' @export
index_entry <- function(index_label = "subject", x) {
  paste0(
    "\\", "index{",
    index_label,
    "}{",
    # need to escape backlashes in LaTeX
    # https://stackoverflow.com/questions/41446525/insert-backslashes-with-gsub
    gsub("_", "\\\\_", x),
    "}"
  )
}