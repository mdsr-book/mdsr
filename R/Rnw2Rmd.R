#' Convert Rnw to Rmd
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
#  x <- gsub("\\Sexpr{", "``r ", x)
  # sections  
  x <- gsub("(\\\\chapter\\{)(.+)(\\})", "# \\2", x)
  x <- gsub("(\\\\section\\{)(.+)(\\})", "## \\2", x)
  x <- gsub("(\\\\subsection\\{)(.+)(\\})", "### \\2", x)
  x <- gsub("(\\\\subsubsection\\{)(.+)(\\})", "#### \\2", x)
  
  x <- gsub("{\\\\tt ([a-zA-Z0-9. _()=]*)} ", "`\\1` ", x, perl = TRUE)  # need to clean up {`
  x <- gsub("\\index{R}", "setindex{r}\\\\index", x, perl = TRUE)
  x <- gsub("\\index{subject}", "setindex{subject}\\\\index", x, perl = TRUE)
  x <- gsub("\\\\bref", "", x, perl = TRUE)
  x <- gsub("\\\\eref", "", x, perl = TRUE)
  x <- gsub("\\\\enote", "", x, perl = TRUE)
  x <- gsub("\\\\bnote", "NOTE: ", x, perl = TRUE)
  x <- gsub("\\\\index{SAS}.*", "", x, perl = TRUE)
  x <- gsub("\\\\end{verbatim}\\\\er", "```", x, perl = TRUE)
  writeLines(x, new_path)
}