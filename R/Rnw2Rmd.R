globalVariables(c("."))

#' Convert Rnw to Rmd
#' @inheritParams fs::file_move
#' @importFrom fs fs_path
#' @export

# inspiration
# https://github.com/dtkaplan/detex/blob/master/R/replace_tex.R
# https://github.com/ajrgodfrey/BrailleR/blob/master/R/Rnw2Rmd.R

Rnw2Rmd <- function(path, new_path = NULL) {
  if (is.null(new_path)) {
    new_path <- path %>%
      gsub(".Rnw", ".Rmd", .) %>%
      gsub(".tex", ".Rmd", .) %>%
      fs::fs_path()
  }
  x <- readLines(path)
  # chunks
  x <- gsub("(<<)(.*)(>>=)", "```{r \\2}", x)
  x <- gsub("^@", "```", x)
  x <- gsub("(\\\\Sexpr\\{)(.+)(\\})", "`r \\2`", x)
  # sections  
  x <- gsub("(\\\\chapter\\{)(.+)(\\})", "# \\2", x)
  x <- gsub("(\\\\section\\{)(.+)(\\})", "## \\2", x)
  x <- gsub("(\\\\subsection\\{)(.+)(\\})", "### \\2", x)
  x <- gsub("(\\\\subsubsection\\{)(.+)(\\})", "#### \\2", x)
  # references
  x <- gsub("(\\\\citep\\{)(.+)(\\})", "[@\\2]", x)
  x <- gsub("(\\\\cite\\{)(.+)(\\})", "@\\2", x)
  x <- gsub("(\\\\ref\\{)(.+)(\\})", "\\\\@ref(\\2)", x)
  x <- gsub("(\\\\label\\{)(.+)(\\})", "{#\\2}", x)
  # LaTeX
  x <- gsub("\\\\item", "- ", x)
  x <- gsub("(\\\\emph\\{)(.+)(\\})", "**\\2**", x)
  x <- gsub("(\\\\textbf\\{)(.+)(\\})", "*\\2*", x)
  x <- gsub("(\\\\href\\{)(.+)(\\})(\\{)(.+)(\\})", "[\\2](\\5)", x)
#  x <- gsub('(``)(.+)(\\")', '"\\2"', x)
  
  x <- gsub("{\\\\tt ([a-zA-Z0-9. _()=]*)} ", "`\\1` ", x, perl = TRUE)  # need to clean up {`
#  x <- gsub("\\index{R}", "setindex{r}\\\\index", x, perl = TRUE)
#  x <- gsub("\\index{subject}", "setindex{subject}\\\\index", x, perl = TRUE)
  writeLines(x, new_path)
}