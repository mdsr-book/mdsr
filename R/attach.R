core <- c("tidyverse", "mosaic")


# tidyverse:::tidyverse_attach()
mdsr_attach <- function() {
  
#  suppressPackageStartupMessages(
    lapply(core, library, character.only = TRUE, warn.conflicts = FALSE)
#  )
  
  invisible()
}

# tidyverse:::.onAttach()
.onAttach <- function(...) {
  needed <- core[!is_attached(core)]
  if (length(needed) == 0)
    return()
  
  mdsr_attach()
}

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}