#' Data about recent major league baseball teams
#' 
#' A dataset containing information about Major League Baseball teams 
#' from 2008-2013. 
#' 
#' @docType data
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
"MLB_teams" 

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
#' @docType data
"CountryData2"

#' election statistics
#' @docType data
"Elections"

#' Cherry Blossom runs
#' @docType data
"Cherry"

#' Cancer
#' @docType data
"Cancer"

#' NYC Health Violations Restaurant Cuisines
#' @format{
#' A data frame with 84 observations on the following 2 variables.
#' \describe{
#'  \item{\code{cuisine_code}}{a character vector}
#'  \item{\code{cuisine_description}}{a character vector}
#' }
#' }
"Cuisines"

#' NYC Restaurant Health Violations
#' @docType data
#' @format{
#' A data frame with 480,621 observations on the following 16 variables.
#' \describe{
#'  \item{\code{camis}}{unique identifier}
#'  \item{\code{dba}}{full name doing business as}
#'  \item{\code{boro}}{borough of New York}
#'  \item{\code{building}}{building name}
#'  \item{\code{street}}{street address}
#'  \item{\code{zipcode}}{zipcode}
#'  \item{\code{phone}}{phone number}
#'  \item{\code{inspection_date}}{inspection date}
#'  \item{\code{action}}{action taken}
#'  \item{\code{violation_code}}{violation code, see ViolationCodes}
#'  \item{\code{score}}{inspection score}
#'  \item{\code{grade}}{inspection grade}
#'  \item{\code{grade_date}}{grade date}
#'  \item{\code{record_date}}{recording date}
#'  \item{\code{inspection_type}}{inspect type}
#'  \item{\code{cuisine_code}}{cuisine code, see Cuisines}
#' }
#' }
#' @source NYC Open Data, \url{https://data.cityofnewyork.us/Health/DOHMH-New-York-City-Restaurant-Inspection-Results/xx67-kt59}
"Violations"

#' NYC Restaurant Health Violation Codes
#' @docType data
#' @format A data frame with 174 observations on the following 3 variables.
#' \describe{
#'    \item{\code{violation_code}}{a factor with many levels}
#'    \item{\code{critical_flag}}{is violation critical: a factor with levels \code{N} \code{Y}}
#'    \item{\code{violation_description}}{violation description}
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
#' updated} \item{title}{title of the paper}
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
#' @source Data from the Centers for Medicare and Medicaid Services.
#' See \url{http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html}.
#' @keywords datasets
#' @examples
#' 
#' data(MedicareCharges)
#' 
"MedicareCharges"

#' Text of Macbeth
#' 
#' The entire text of Macbeth, stored in a character vector of length 1.
#' 
#' @docType data
#' @format A character vector of length 1
#' @source Project Gutenberg, \url{http://www.gutenberg.org/cache/epub/1129/pg1129.txt}
"Macbeth_raw"

#' State SAT scores from 2010
#' 
#' SAT results by state for 2010
#' 
#' @docType data
#' @format A data.frame with 50 rows and 9 variables. 
#'  \describe{
#'  \item{\code{state}}{a factor with levels for each state}
#'  \item{\code{expenditure}}{average expenditure per student (in each state)}
#'  \item{\code{pupil_teacher_ratio}}{pupil to teacher ratio in that state}
#'  \item{\code{salary}}{teacher salary (in 2010 US $)}
#'  \item{\code{read}}{state average Reading SAT score}
#'  \item{\code{math}}{state average Math SAT score}
#'  \item{\code{write}}{state average Writing SAT score}
#'  \item{\code{total}}{state average Total SAT score}
#'  \item{\code{sat_pct}}{percent of students taking SAT in that state}
#' }
#' @details See also the earlier \code{\link[mosaicData]{SAT}} dataset.
"SAT_2010"

#' Cities and their populations
#' 
#' A list of cities
#' 
#' 
#' @name WorldCities
#' @docType data
#' @format A data frame with 23,018 observations on the following 10 variables.
#' \describe{ 
#' \item{code}{The ISO (?) city code}
#' \item{name}{Name of the city} 
#' \item{latitude}{location in degrees} 
#' \item{longitude}{location in degrees}
#' \item{country}{Two letter country code}
#' \item{countryRegion}{A numerical region}
#' \item{population}{Population} 
#' \item{regionCode}{ISO (?) Code} 
#' \item{region}{Name of the region} 
#' \item{date}{Date estimate made} }
#' @references In Draft: We need a proper reference
#' @source In Draft: Somewhere on the Internet.  We need a proper source.
#' @keywords datasets
#' @examples
#' 
#' data(WorldCities)
#' ## maybe str(WorldCities) ; plot(WorldCities) ...
#' 
"WorldCities"

#' Votes from Scottish Parliament
#' @docType data
"Votes"
#' @rdname Votes
"Parties"

#' Ballots in the 2013 Mayoral election in Minneapolis
#' 
#' The choices marked on each (valid) ballot for the election, which was run
#' using a rank-choice, instant runoff system.
#' 
#' Ballot information for the 2013 Minneapolis Mayoral election, which was run
#' as a rank-choice election.  In rank-choice, a voter can indicate first,
#' second, and third choices.  If a voter's first choice is eliminated (by
#' being last in the count across voters), the second choice is promoted to
#' that voter's first choice, and similarly third -> second.  Eliminations are
#' done successively until one candidate has a majority of the first-choice
#' votes.
#' 
#' @name Minneapolis2013
#' @docType data
#' @format A data frame with 80101 observations on the following 5 variables.
#' All are stored as character strings.  \describe{
#' \item{list("Precinct")}{Precincts are sub-divisions within Wards}
#' \item{list("First")}{The voter's first choice} \item{list("Second")}{The
#' voter's second choice} \item{list("Third")}{The voter's third choice}
#' \item{list("Ward")}{The city is divided spatially into districts or 'wards'.
#' These are further subdivided into precincts } }
#' @references Description of ranked-choice voting:
#' http://vote.minneapolismn.gov/rcv/index.htm
#' 
#' A Minnesota Public Radio story about the election ballot tallying process:
#' http://minnesota.publicradio.org/display/web/2013/11/22/politics/ranked-choice-vote-count-programmers
#' 
#' The Wikipedia article about the election:
#' http://en.wikipedia.org/wiki/Minneapolis_mayoral_election,_2013
#' @source Ballot data from the Minneapolis city government:
#' http://vote.minneapolismn.gov/www/groups/public/@clerk/documents/webcontent/2013-mayor-cvr.xlsx
#' @keywords datasets
#' @examples
#' 
#' data(Minneapolis2013)
#' str(Minneapolis2013)
#' 
"Minneapolis2013"

#' Birds captured and released at Ordway, complete and uncleaned
#' 
#' The historical record of birds captured and released at the Katharine Ordway
#' Natural History Study Area, a 278-acre preserve in Inver Grove Heights,
#' Minnesota, owned and managed by Macalester College.
#' 
#' There are many extraneous levels of variables such as species.  Part of the
#' purpose of this data set is to teach about data cleaning.
#' 
#' A translation table for cleaning the species names is in
#' \code{OrdwaySpecies}.r
#' 
#' @name OrdwayBirds
#' @docType data
#' @format A data frame with 15829 observations on the bird's species, size,
#' date found, and band number.
#' 
#' Timestamp indicates when the data were entered into an electronic record,
#' not anything about the bird being described.
#' @references %% ~~ possibly secondary sources and usages ~~
#' @source Jerald Dosch, Dept. of Biology, Macalester College: the manager of
#' the Study Area.
#' @keywords datasets
#' @examples
#' 
#' data(OrdwayBirdsOrig)
#' 
"OrdwayBirds"