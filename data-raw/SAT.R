# SAT

SAT_2010 <- read.csv("inst/extdata/GuberSATupdated2010.csv")
names(SAT_2010) <- names(SAT_2010) %>% 
  tolower() %>%
  gsub("\\.", "_", x = .)
SAT_2010 <- SAT_2010 %>%
  rename(sat_pct = percentsat)
save(SAT_2010, file = "data/SAT_2010.rda", compress = "xz")
