n
#' Replacements for LaTeX macros
#' @name macros
#' @export
#' @param x text to wrap in macro
#'
func <- function(x) {
  part1 <- index_entry('R', paste0(x, "()"))
  part2 <- paste0("`", x, "()`")
  return(paste(part1, part2, sep = ""))
}


#' @rdname macros
#' @export
sql_func <- function(x) {
  index_entry('SQL functions', x)
  paste0("`", toupper(x), "()`")
}

#' @rdname macros
#' @export
sql_word <- function(x) {
  index_entry('SQL keywords', x)
  paste0("`", toupper(x), "`")
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
  part1 <- index_entry(index_label = 'R', paste0("library(", x, ")", sep = ""))
  part2 <- paste0("**", x, "**")
  return(paste(part1, part2, sep = ""))
}

#' @rdname macros
#' @export
mdsr_data <- function(x) {
  index_entry('Data Sets', x)
  paste0("`", x, "`")
}

#' @rdname macrosun
#' @export
person <- function(x) {
  # index_entry('subject', x)   # this just gets thrown away!
  # people need to be manually indexed, or function written to turn Ben Baumer into Baumer, Ben
  paste0("[", x, "](https://en.wikipedia.org/w/index.php?search=", x, ")")
}

#' @rdname macros
#' @export
vocab <- function(x) {
  part1 <- index_entry(index_label = 'subject', x)
  part2 <- paste0("[*", x, "*](https://en.wikipedia.org/w/index.php?search=", x, ")")
  return(paste(part1, part2, sep = ""))
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
