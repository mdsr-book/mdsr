require(mosaic)
require(Lahman)
# collect basic statistics about teams
myTeams <- Teams %>%
  filter(yearID > 2007) %>%
  select(yearID, teamID, lgID, W, L, attendance, name)
# aggregate approximate team payrolls
payrolls <- Lahman::Salaries %>%
  group_by(yearID, teamID) %>%
  summarise(payroll = sum(salary))
# merge the two together
ds <- myTeams %>%
  inner_join(payrolls, by = c("yearID", "teamID")) %>%
  mutate(WPct = W / (W+L)) %>%
  mutate(normAttend = attendance / max(attendance)) 


require(rvest)
require(tidyr)
require(stringr)
html <- html("https://en.wikipedia.org/wiki/List_of_Metropolitan_Statistical_Areas")
tables <- html %>% html_nodes("table")
msas <- html_table(tables[[2]], fill = TRUE)
bbmsas <- msas %>%
  mutate(metroPop = extract_numeric(`2014 Estimate`)) %>%
  mutate(rank = extract_numeric(Rank)) %>%
  mutate(id = gsub("(-|,|–|/)", "", 
                   str_extract(`Metropolitan Statistical Area`, "^[A-Za-z \\.]+(-|,|–|/)"))) %>%
  head(50)

lkup <- summarise(group_by(ds, teamID))
lkup$msaId <- c("Phoenix", "Atlanta", "Baltimore", "Boston", "Chicago",
                "Chicago", "Cincinnati", "Cleveland", "Denver", "Detroit",
                "Miami", "Houston", "Kansas City", "Los Angeles", "Los Angeles",
                "Miami", "Milwaukee", "Minneapolis", "New York", "New York",
                "San Jose", "Philadelphia", "Pittsburgh", "San Diego", "Seattle",
                "San Francisco", "St. Louis", "Tampa", "Dallas", "Toronto", "Washington"
)
lkup <- left_join(x = lkup, y = bbmsas, by = c("msaId" = "id"))
#  no data for Canada, so have to manually code MSA population from 
#  https://en.wikipedia.org/wiki/Greater_Toronto_Area
lkup[which(lkup$teamID == "TOR"), "metroPop"] <- 5583064

bbteams <- ds %>%
  left_join(lkup, by = c("teamID" = "teamID")) %>%
  select(yearID, teamID, lgID, W, L, WPct, attendance, 
         normAttend, payroll, metroPop, name) %>%
  tbl_df()

# save the resulting data frame
save(bbteams, file = "data/bbteams.rda", compress = "xz")
