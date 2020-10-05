n
#' Replacements for LaTeX macros
#' @name macros
#' @export
#' @param x text to wrap in macro
#'
func <- function(x) {
  part1 <- index_entry('R', paste0(x, "()"))
  part2 <- paste0("`", x, "()`")
  return(paste0(part1, part2))
}


#' @rdname macros
#' @export
sql_func <- function(x) {
  word <- paste0(toupper(x), "()")
  paste0(
    index_entry('subject', paste0('SQL!', word)),
    paste0("`", word, "`")
  )
}

#' @rdname macros
#' @export
sql_word <- function(x) {
  word <- toupper(x)
  paste0(
    index_entry('subject', paste0('SQL!', word)),
    paste0("`", word, "`")
  )
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
  return(paste0(part1, part2))
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
  # people need to be manually indexed, or function written to turn Ben Baumer into Baumer, Ben
  y <- stringr::str_split(x, " ")[[1]]
  if (length(y) == 2) {
    x2 <- paste0(rev(y), collapse = ", ")
    index <- paste0(
      index_entry(index_label = 'subject', x),
      index_entry(index_label = 'subject', x2)
    )
  } else {
    index <- paste0(
      index_entry(index_label = 'subject', x)
    )
  }
  part3 <- paste0("[", x, "](https://en.wikipedia.org/w/index.php?search=", x, ")")
  return(paste0(index, part3))
}

#' @rdname macros
#' @export
vocab <- function(x) {
  part1 <- index_entry(index_label = 'subject', x)
  part2 <- paste0("[*", x, "*](https://en.wikipedia.org/w/index.php?search=", x, ")")
  return(paste0(part1, part2))
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
