#' Data about recent major league baseball teams
#' 
#' A dataset containing information about Major League Baseball teams 
#' from 2008-2013. 
#' 
#' @format A \code{\link{tbl_df}} object. 
#' \describe{
#'  \item{yearID}{season in which the team played}
#'  \item{teamID}{the team's three character identifier}
#'  \item{lgID}{the league in which the team played}
#'  \item{W}{number of wins}
#'  \item{L}{number of losses}
#'  \item{WPct}{winning percentage}
#'  \item{attendance}{number of fans in attendance}
#'  \item{normAttend}{number of fans in attendance, relative to the team with
#'#'the highest attendance in this sample (the 2008 New York Yankees)}
#'  \item{payroll}{the sum of the salaries of the players on each team. Note
#'#'that this number is only an estimate of the actual team payroll -- and may
#'#'not even be a very good one. Salaries are accumulated from \code{\link[Lahman]{Salaries}}}
#'  \item{metroPop}{the size of the team's home city's metropolitan population, according
#'#'to Wikipedia and the 2010 US Census}
#'  \item{name}{the full name of the team}
#' }
#' 
#' @seealso \code{\link[Lahman]{Teams}}
#' 
#' @source The \code{\link[Lahman]{Teams}} data set and \url{https://en.wikipedia.org/wiki/List_of_Metropolitan_Statistical_Areas}
#' 
"bbteams" 

#' Many variables on countries from the CIA factbook, 2014.
#' 
#' The CIA Factbook has geographic, demographic, and economic data on a
#' country-by-country basis.#'In the description of the variables, the 4-digit
#' number indicates the code used to specify that variable on the data and
#' documentation web site.#'For instance,
#' \url{https://www.cia.gov/library/publications/the-world-factbook/fields/2153.html}
#' contains documentation for variable code 2153, network users.
#' 
#' These data were collected using the \code{CIAdata()} function.
#' 
#' THE DOCUMENTATION NEEDS COMPLETING.#'See the output of \code{CIAdata() and
#' Google "CIA Factbook NNNN"}, where NNNN is the 4-digit code used for
#' indexing the data at the CIA.
#' 
#' @name CountryData
#' @docType data
#' @format A data frame on the following 76 variables for each of the Countries
#' in the World. (256 countries are given.)#'\describe{
#' \item{country}{Name of the country.} \item{area}{area (sq
#' km), 2147} \item{pop}{number of people, 2119}
#' \item{growth}{growth rate per year (\%),2002}
#' \item{birth}{birth rate (#/1000), 2054} \item{death}{death
#' rate (#/1000), 2066} \item{netMigr}{net migration per year (#/1000).
#' Difference between incoming and outgoing. 2112}
#' \item{maternal}{maternal deaths per 100000 live births. 2223}
#' \item{infant}{infant deaths per 1000 live births. 2091}
#' \item{life}{life expectancy (years), 2102}
#' \item{fert}{children born/woman (#/person), 2127}
#' \item{health}{health spending (\% of GDP), 2225}
#' \item{HIVrate}{people with HIV (\% of population), 2155}
#' \item{HIVpeople}{people with HIV (#), 2156}
#' \item{HIVdeath}{deaths from HIV (#/year), 2157}
#' \item{obesity}{fraction of population considered obese (\%), 2228}
#' \item{underweight}{fraction of population considered underweight
#' (\%), 2224} \item{educ}{education spending (\% of GDP), 2206}
#' \item{unemploymentYouth}{youth unemployment (\%), 2229}
#' \item{GDP}{Gross Domestic Product ($), 2001}
#' \item{GDPgrowth}{growth in GDP (\%/year), 2003}
#' \item{GDPcapita}{GDP per capita ($/person), 2004}
#' \item{saving}{yearly money savings (\% of GDP), 2260}
#' \item{indProd}{Industrial production growth rate (\%), 2089}
#' \item{labor}{Labor force (people), 2095}
#' \item{unemployment}{Unemployment rate (\%), 2129}
#' \item{family}{Distribution of family income - Gini index (Gini
#' index), 2172} \item{tax}{Taxes and other revenues (\% of GDP), 2221}
#' \item{budget}{Budget surplus (+) or deficit (-) (\% of GDP), 2222}
#' \item{debt}{Public debt (\% of GDP), 2186}
#' \item{inflation}{Inflation rate (consumer prices) (\%), 2092}
#' \item{discount}{Central bank discount rate (\%), 2207}
#' \item{lending}{Commercial bank prime lending rate (\%), 2208}
#' \item{narrow}{Stock of narrow money ($), 2214}
#' \item{broad}{Stock of broad money ($), 2215}
#' \item{credit}{Stock of domestic credit ($), 2211}
#' \item{shares}{Market value of publicly traded shares ($), 2200}
#' \item{balance}{Current account balance ($), 2187}
#' \item{exports}{Exports ($), 2078} \item{imports}{Imports
#' ($), 2087} \item{gold}{Reserves of foreign exchange and gold ($),
#' 2188} \item{externalDebt}{Debt - external ($), 2079}
#' \item{homeStock}{Stock of direct foreign investment - at home ($),
#' 2198} \item{abroadStock}{Stock of direct foreign investment - abroad
#' ($), 2199} \item{elecProd}{Electricity - production (kWh), 2232}
#' \item{elecCons}{Electricity - consumption (kWh), 2233}
#' \item{elecExp}{Electricity - exports (kWh), 2234}
#' \item{elecImp}{Electricity - imports (kWh), 2235}
#' \item{elecCap}{Electricity - installed generating capacity (kW),
#' 2236} \item{elecFossil}{Electricity - from fossil fuels (\% of total
#' installed capacity), 2237} \item{elecNuc}{Electricity - from nuclear
#' fuels (\% of total installed capacity), 2239}
#' \item{elecHydro}{Electricity - from hydroelectric plants (\% of
#' total installed capacity), 2238} \item{elecRenew}{Electricity - from
#' other renewable sources (\% of total installed capacity), 2240}
#' \item{oilProd}{Crude oil - production (bbl/day), 2241}
#' \item{oilExp}{Crude oil - exports (bbl/day), 2242}
#' \item{oilImp}{Crude oil - imports (bbl/day), 2243}
#' \item{oilRes}{Crude oil - proved reserves (bbl), 2244}
#' \item{petroProd}{Refined petroleum products - production (bbl/day),
#' 2245} \item{petroCons}{Refined petroleum products - consumption
#' (bbl/day), 2246} \item{petroExp}{Refined petroleum products -
#' exports (bbl/day), 2247} \item{petroImp}{Refined petroleum products
#' - imports (bbl/day), 2248} \item{gasProd}{Natural gas - production
#' (cu M), 2249} \item{gasCons}{Natural gas - consumption (cu M), 2250}
#' \item{gasExp}{Natural gas - exports (cu M), 2251}
#' \item{gasImp}{Natural gas - imports (cu M), 2252}
#' \item{gasRes}{Natural gas - proved reserves (cu M), 2253}
#' \item{mainlines}{Telephones - main lines in use (mainlines in use),
#' 2150} \item{cell}{Telephones - mobile cellular (cellphones), 2151}
#' \item{netHosts}{Internet hosts (#), 2184}
#' \item{netUsers}{Internet users (#), 2153}
#' \item{airports}{Airports (#), 2053} \item{railways}{Railways
#' (km), 2121} \item{roadways}{Roadways (km), 2085}
#' \item{waterways}{Waterways (km), 2093}
#' \item{marine}{Merchant marine (# of ships), 2108}
#' \item{military}{Military expenditures (\% of GDP), 2034} }
#' @source From the CIA World Factbook,
#' \url{https://www.cia.gov/library/publications/the-world-factbook/} For
#' package maintainers: The lines to construct the file are in
#' \code{inst/datafixes.R}.
#' @keywords datasets
#' @examples
#' 
#' data(CountryData)
#' ## maybe str(CountryData) ; plot(CountryData) ...
#' 
"CountryData"

#' A modified version of CountryData
#' @rdname CountryData
"CountryData2"

#' election statistics
"electionStatistics"

#' Cherry Blossom runs
"cherry"

#' Cuisines
#' @format{
#' A data frame with 531420 observations on the following 15 variables.
#' \describe{
#'  \item{\code{CAMIS}}{a character vector}
#'  \item{\code{DBA}}{a character vector}
#'  \item{\code{BORO}}{a numeric vector}
#'  \item{\code{BUILDING}}{a character vector}
#'  \item{\code{STREET}}{a character vector}
#'  \item{\code{ZIPCODE}}{a character vector}
#'  \item{\code{PHONE}}{a numeric vector}
#'  \item{\code{CUISINECODE}}{a numeric vector}
#'  \item{\code{INSPDATE}}{a POSIXct}
#'  \item{\code{ACTION}}{a character vector}
#'  \item{\code{VIOLCODE}}{a character vector}
#'  \item{\code{SCORE}}{a numeric vector}
#'  \item{\code{CURRENTGRADE}}{a character vector}
#'  \item{\code{GRADEDATE}}{a POSIXct}
#'  \item{\code{RECORDDATE}}{a POSIXct}
#' }
#' }
"Cuisines"

#' Restaurants
#' @docType data
#' @format{
#' A data frame with 531420 observations on the following 15 variables.
#' \describe{
#'  \item{\code{CAMIS}}{a character vector}
#'  \item{\code{DBA}}{a character vector}
#'  \item{\code{BORO}}{a numeric vector}
#'  \item{\code{BUILDING}}{a character vector}
#'  \item{\code{STREET}}{a character vector}
#'  \item{\code{ZIPCODE}}{a character vector}
#'  \item{\code{PHONE}}{a numeric vector}
#'  \item{\code{CUISINECODE}}{a numeric vector}
#'  \item{\code{INSPDATE}}{a POSIXct}
#'  \item{\code{ACTION}}{a character vector}
#'  \item{\code{VIOLCODE}}{a character vector}
#'  \item{\code{SCORE}}{a numeric vector}
#'  \item{\code{CURRENTGRADE}}{a character vector}
#'  \item{\code{GRADEDATE}}{a POSIXct}
#'  \item{\code{RECORDDATE}}{a POSIXct}
#' }
#' }
"Restaurants"

#' ViolationCodes
#' @docType data
#' @format A data frame with 174 observations on the following 3 variables.
#' \describe{
#'    \item{\code{VIOLATIONCODE}}{a factor with levels \code{01A} \code{01B} \code{01C} \code{01D} \code{01E} \code{01F} \code{01G} \code{01H} \code{01I} \code{02A} \code{02B} \code{02C} \code{02D} \code{02E} \code{02F} \code{02G} \code{02H} \code{02I} \code{02J} \code{03A} \code{03B} \code{03C} \code{03D} \code{03E} \code{03F} \code{03G} \code{03H} \code{04A} \code{04B} \code{04C} \code{04D} \code{04E} \code{04F} \code{04G} \code{04H} \code{04I} \code{04J} \code{04K} \code{04L} \code{04M} \code{04N} \code{04O} \code{04P} \code{04Q} \code{05A} \code{05B} \code{05C} \code{05D} \code{05E} \code{05F} \code{05G} \code{05H} \code{05I} \code{05J} \code{06A} \code{06B} \code{06C} \code{06D} \code{06E} \code{06F} \code{06G} \code{06H} \code{06I} \code{07A} \code{07B} \code{07C} \code{07D} \code{07E} \code{07F} \code{07G} \code{07H} \code{07I} \code{08A} \code{08B} \code{08C} \code{08D} \code{08E} \code{08F} \code{08G} \code{08H} \code{08I} \code{08J} \code{08K} \code{08L} \code{08M} \code{09A} \code{09B} \code{09C} \code{09D} \code{09E} \code{09F} \code{09G} \code{09H} \code{10A} \code{10B} \code{10C} \code{10D} \code{10E} \code{10F} \code{10G} \code{10H} \code{10I} \code{10J} \code{10K} \code{10L} \code{10M} \code{11A} \code{11B} \code{11C} \code{11D} \code{12A} \code{12B} \code{12C} \code{12D} \code{12E} \code{12F} \code{12G} \code{12H} \code{13A} \code{13B} \code{13C} \code{13D} \code{13E} \code{14A} \code{14B} \code{14C} \code{14D} \code{14E} \code{15A} \code{15B} \code{15C} \code{15D} \code{15E} \code{15F} \code{15G} \code{15H} \code{15I} \code{15J} \code{15K} \code{15L} \code{15M} \code{15N} \code{15O} \code{15P} \code{15Q} \code{15R} \code{15S} \code{15T} \code{16A} \code{16B} \code{16C} \code{16D} \code{16E} \code{16F} \code{18A} \code{18B} \code{18C} \code{18D} \code{18E} \code{18F} \code{18G} \code{18H} \code{18I} \code{20A} \code{20B} \code{20C} \code{20D} \code{20E} \code{20F} \code{22A} \code{22B} \code{22C} \code{22E} \code{99B}}
#'    \item{\code{CRITICALFLAG}}{a factor with levels \code{N} \code{Y}}
#'    \item{\code{VIOLATIONDESC}}{a character vector}
#'  }
"ViolationCodes"

#' Data Science Papers from arXiv.org
#' 
#' @description Papers matching the search string "Data Science" on arXiv.org in December,
#' 2015
#' 
#' 
#' @name DataSciencePapers
#' @docType data
#' @format A data frame with 95 observations on the following 15 variables.
#' \describe{ \item{id}{unique arXiv.org identifier for the paper}
#' \item{submitted}{date submitted} \item{updated}{date last
#' updated} \item{title}{title of the data}
#' \item{abstract}{contents of the abstract}
#' \item{authors}{authors of the paper}
#' \item{affiliations}{affiliations of the authors}
#' \item{link_abstract}{direct link to the abstract}
#' \item{link_pdf}{direct link to the pdf}
#' \item{link_doi}{direct link to the digital object identifier (doi)}
#' \item{comment}{commentary} \item{journal_ref}{reference to
#' the journal (if published)} \item{doi}{digital object identifier}
#' \item{primary_category}{arXiv.org primary category}
#' \item{categories}{arXiv.org categories} }
#' @source \url{arxiv.org}
#' @keywords datasets
#' @examples
#' 
#' data(DataSciencePapers)
#' str(DataSciencePapers)
#' 
"DataSciencePapers"

#' Medicare Providers
#' 
#' Name and location data for the medicare providers in the
#' \code{MedicareCharges} data table.
#' 
#' This data table is related to \code{MedicareCharges} data.
#' 
#' @name MedicareProviders
#' @docType data
#' @format A data frame with 3337 observations on the following 7 variables.
#' \describe{ \item{idProvider}{a unique number assigned to each
#' provider} \item{nameProvider}{Name of the provider. (text string)}
#' \item{addressProvider}{Street address of the provider. (text
#' string)} \item{cityProvider}{The name of the city in which the
#' provider is located. (factor)} \item{stateProvider}{The two-letter
#' postal code of the state in which the provider is located. (factor)}
#' \item{zipProvider}{The provider's ZIP code. (factor)}
#' \item{referralRegion}{An identifier for the region serviced by the
#' provider.} }
#' @source Extracted from the highly repetitive table provided by the Centers
#' for Medicare and Medicaid Services.#'See
#' \url{http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html}
#' @keywords datasets
#' @examples
#' 
#' head(MedicareProviders)
#' 
"MedicareProviders"

#' Charges to and Payments from Medicare
#' 
#' These data for 2011, released in May 2013, describe how much hospitals
#' charged Medicare for various inpatient procedures, how many were performed,
#' and how much Medicare actually paid.
#' 
#' These data are part of a set with \code{DirectRecoveryGroups}, which gives a
#' description of the medical procedure associated with each DRG, and
#' \code{MedicareProviders}, which translates \code{idProvider} into a name,
#' address, state, Zip, etc..
#' 
#' @name MedicareCharges
#' @docType data
#' @format A data frame with 163065 observations on the following 5 variables.
#' \describe{ \item{drg}{Code for the Direct Recovery Group: a
#' character string that looks like a number.} \item{idProvider}{a
#' numeric vector: it should be a factor.} \item{totalDischarges}{a
#' numeric vector} \item{aveCharges}{a numeric vector}
#' \item{avePayments}{a numeric vector} }
#' @source Data from the Centers for Medicare and Medicaid Services.#'See
#' \url{http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html}.
#' @keywords datasets
#' @examples
#' 
#' data(MedicareCharges)
#' 
"MedicareCharges"

