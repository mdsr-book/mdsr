core <- c("mosaic")

# tidyverse:::tidyverse_attach()
mdsr_attach <- function() {
  
#  suppressPackageStartupMessages(
    lapply(core, library, character.only = TRUE, warn.conflicts = FALSE)
#  )
  
  packageStartupMessage(
    paste0("\nIn accordance with CRAN policy, the 'mdsr' package 
           no longer attaches\nthe 'tidyverse' package automatically.",
           "\nYou may need to 'library(tidyverse)' in order to 
           use certain functions."
    ),
    appendLF = TRUE)
  
  
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