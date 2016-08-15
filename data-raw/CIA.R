# CIA data


# readr::read_csv("https://raw.githubusercontent.com/factbook/factbook.csv/master/categories.csv")

CIAdata()

CIACountries <- mosaic::CIAdata(c("pop", "area", "oilProd", "GDPcapita", 
                                  "educ", "roadways", "netUsers")) %>%
  mutate(roadways = roadways / area, 
         net_users = cut(netUsers / pop, breaks = c(0, 0.05, 0.15, 0.35, 0.60, 1), 
                         labels = c(">0%", ">5%", ">15%", ">35%", ">60%")
                         )
         ) %>%
  rename(gdp = GDPcapita, oil_prod = oilProd) %>%
  select(-netUsers) %>%
  na.omit()

filter(DataComputing::CountryData, country == "United States")
filter(CIACountries, country == "United States")

save(CIACountries, file = "data/CIACountries.rda")