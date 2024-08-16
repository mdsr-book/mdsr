#' Replacements for LaTeX macros
#' @name macros
#' @details
#' These functions are used by the authors to write the book, and are not
#' intended for users. 
#' 
#' @export
#' @keywords internal
#' @param x text to wrap in macro
#' @param index add LaTeX indexing?
#' @examples 
#' func("mutate")
#' func("mutate", index = FALSE)
#' func("left_join")
func <- function(x, ...) {
  word <- paste0(x, "()")
  md <- paste0("`", word, "`")
  paste0(index_entry('R', word, ...), md)
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
#' @examples 
#' pkg("dplyr")
pkg <- function(x, ...) {
  word <- paste0("library(", x, ")")
  md <- paste0("**", x, "**")
  paste0(index_entry('R', word, ...), md)
}

#' @rdname macros
#' @export
mdsr_data <- function(x) {
  index_entry('Data Sets', x)
  paste0("`", x, "`")
}

#' @rdname macros
#' @export
#' @examples 
#' mdsr_person("Ben Baumer")
#' mdsr_person("Ben Baumer", emph = TRUE)
#' mdsr_person("Richard De Veaux")
#' mdsr_person("Richard De Veaux", alt = "De Veaux, Richard")
mdsr_person <- function(x, ...) {
  # people need to be manually indexed, or function written to turn Ben Baumer into Baumer, Ben
  y <- stringr::str_split(x, " ")[[1]]
  if (length(y) == 2) {
    x2 <- paste0(rev(y), collapse = ", ")
    index <- index_entry(index_label = 'subject', x2, ...)
  } else {
    index <- paste0(
      index_entry(index_label = 'subject', x, ...)
    )
  }
  part3 <- paste0("[", x, "](https://en.wikipedia.org/w/index.php?search=", x, ")")
  return(paste0(index, part3))
}

#' @rdname macros
#' @export
#' @param ... arguments passed to [index_entry()]
#' @examples 
#' vocab(x = "Big data", .f = tolower)
vocab <- function(x, ...) {
  part1 <- index_entry(index_label = 'subject', x, ...)
  part2 <- paste0("[*", x, "*](https://en.wikipedia.org/w/index.php?search=", x, ")")
  return(paste0(part1, part2))
}

#' @rdname macros
#' @param index_label the name of the index
#' @param emph Display the LaTeX entry in italics
#' @param .f function to apply to `x` during indexing
#' @param alt alternate character string to use for indexing
#' @export
#' @examples 
#' index_entry(x = "Barack Obama")
#' index_entry(x = "Barack Obama", index = FALSE)
#' index_entry(x = "Big data", .f = tolower)
#' index_entry(x = "Twilight", emph = TRUE)
#' index_entry(x = "Richard De Veaux", alt = "De Veaux, Richard")
#' index_entry(x = "left_join")
index_entry <- function(index_label = "subject", x, emph = FALSE, index = TRUE, .f = NULL, alt = NULL) {
  tex <- gsub("_", "\\\\_", x)
  if (!is.null(.f)) {
    tex <- .f(tex)
  }
  if (is.null(alt)) {
    alt <- tex
  }
  if (index) {
    paste0(
      "\\", "index{",
      index_label,
      "}{",
      # need to escape backlashes in LaTeX
      # https://stackoverflow.com/questions/41446525/insert-backslashes-with-gsub
      alt,
      if (emph) { paste0("@\\emph{", alt, "}") },
      "}"
    )
  }
}

