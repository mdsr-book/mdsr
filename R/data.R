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
#'  the highest attendance in this sample (the 2008 New York Yankees)}
#'  \item{payroll}{the sum of the salaries of the players on each team. Note
#'  that this number is only an estimate of the actual team payroll -- and may
#'  not even be a very good one. Salaries are accumulated from \code{\link[Lahman]{Salaries}}}
#'  \item{metroPop}{the size of the team's home city's metropolitan population, according
#'  to Wikipedia and the 2010 US Census}
#'  \item{name}{the full name of the team}
#' }
#' 
#' @seealso \code{\link[Lahman]{Teams}}
#' 
#' @source The \code{\link[Lahman]{Teams}} table from \code{\link[Lahman]{Lahman-package}} 
#' and \url{https://en.wikipedia.org/wiki/List_of_Metropolitan_Statistical_Areas}
#' 
"MLB_teams" 

#' Several variables on countries from the CIA factbook, 2014.
#' 
#' The CIA Factbook has geographic, demographic, and economic data on a
#' country-by-country basis.
#' In the description of the variables, the 4-digit
#' number indicates the code used to specify that variable on the data and
#' documentation web site.
#' For instance,
#' \url{https://www.cia.gov/library/publications/the-world-factbook/fields/2153.html}
#' contains documentation for variable code 2153, network users.
#' 
#' @name CIACountries
#' @docType data
#' @format A data frame with the following variables for each of the Countries
#' in the World. (236 countries are given.)
#' \describe{
#' \item{country}{Name of the country} 
#' \item{pop}{number of people, 2119}
#' \item{area}{area (sq km), 2147} 
#' \item{oil_prod}{Crude oil - production (bbl/day), 2241}
#' \item{gdp}{Gross Domestic Product per capita ($/person), 2001}
#' \item{educ}{education spending (\% of GDP), 2206}
#' \item{roadways}{Roadways per unit area (km/sq km), 2085}
#' \item{net_users}{Fraction of Internet users (\% of population), 2153}
#' }
#' @source From the CIA World Factbook,
#' \url{https://www.cia.gov/library/publications/the-world-factbook/}
#' @seealso \code{\link[mosaic]{CIAdata}}
#' @references \url{https://github.com/factbook/factbook.csv}
#' @keywords datasets
#' @examples
#' 
#' data(CIACountries)
#' glimpse(CIACountries)
#' 
"CIACountries"

#' Election Statistics
#' @docType data
#' @format An object of class \\code{tbl_df} (inherits from \\code{tbl}, \\code{data.frame}) 
#' with 117 rows and 13 columns.
#' \describe{
#' \item{Ward}{Name of the country} 
#' \item{Precinct}{number of people, 2119}
#' \item{Registered.Voters.at.7am}{area (sq km), 2147} 
#' \item{Voters.Registering.at.Polls}{Crude oil - production (bbl/day), 2241}
#' \item{gdp}{Gross Domestic Product per capita ($/person), 2001}
#' \item{educ}{education spending (\% of GDP), 2206}
#' \item{roadways}{Roadways per unit area (km/sq km), 2085}
#' \item{net_users}{Fraction of Internet users (\% of population), 2153}
#' }
"Elections"

#' Cherry Blossom runs
#' @docType data
#' @format An object of class \code{tbl_df} (inherits from \code{tbl}, \code{data.frame}) 
#' with 41,248 rows and 8 columns. Each row refers to an individual runner in one race of the 
#' Cherry Blossom Ten Miler. The data cover the years 1999 to 2008. All of the runners listed ran
#' at least two of the races in that period, some ran many more than that. 
#' \describe{
#'   \item{name.yob}{a unique identifier for each runner composed of the runner's full name and
#'   year of birth.}
#'   \item{age}{integer giving the runner's age in the race whose result is being reported.}
#'   \item{gun}{the number of minutes elapsed from the starter's gun to the person crossing the finish line}
#'   \item{net}{the number of minutes elapsed from the runner's crossing the start line to crossing the finish line.}
#'   \item{sex}{the runner's sex}
#'   \item{year}{the year of that race}
#'   \item{previous}{integer specifying how many times previous to this race the runner had participated in the years 1999 to 2008.}
#'   \item{nruns}{integer giving the total number of times that runner participated in the years from 1999 to 2008. The smallest is 2, the largest is 10.}
#'   \item{nruns}{integer giving the total number of times that runner participated in the years from 1999 to 2008. The smallest is 2, the largest is 10.}
#' }
#' @details The Cherry Blossom 10 Mile Run is a road race held in Washington,
#' D.C. in April each year.  (The name comes from the famous cherry trees
#' that are in bloom in April in Washington.)  The results of this race
#' are published at \url{http://www.cherryblossom.org/aboutus/results_list.php}.
#' @examples
#' with(Cherry, table(table(name.yob)))
"Cherry"

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
#'  \item{\code{violation_code}}{violation code, see \code{\link{ViolationCodes}}}
#'  \item{\code{score}}{inspection score}
#'  \item{\code{grade}}{inspection grade}
#'  \item{\code{grade_date}}{grade date}
#'  \item{\code{record_date}}{recording date}
#'  \item{\code{inspection_type}}{inspect type}
#'  \item{\code{cuisine_code}}{cuisine code, see \code{\link{Cuisines}}}
#' }
#' }
#' @seealso \code{\link{ViolationCodes}}, \code{\link{Cuisines}}
#' @source NYC Open Data, \url{https://data.cityofnewyork.us/Health/DOHMH-New-York-City-Restaurant-Inspection-Results/xx67-kt59}
#' @examples 
#' data(Violations)
#' Violations %>%
#'   inner_join(Cuisines, by = "cuisine_code") %>%
#'   filter(cuisine_description == "American") %>%
#'   arrange(grade_date) %>%
#'   head() 
"Violations"

#' @rdname Violations
#' @docType data
#' @format A data frame with 174 observations on the following 3 variables.
#' \describe{
#'    \item{\code{violation_code}}{a factor with many levels}
#'    \item{\code{critical_flag}}{is violation critical: a factor with levels \code{N} \code{Y}}
#'    \item{\code{violation_description}}{violation description}
#'  }
"ViolationCodes"

#' @rdname Violations
#' @docType data
#' @format{
#' A data frame with 84 observations on the following 2 variables.
#' \describe{
#'  \item{\code{cuisine_code}}{a character vector}
#'  \item{\code{cuisine_description}}{a character vector}
#' }
#' }
"Cuisines"


#' Data Science Papers from arXiv.org
#' 
#' @description Papers matching the search string "Data Science" on arXiv.org in December,
#' 2015
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
#' \describe{ 
#'  \item{idProvider}{a unique number assigned to each
#' provider} 
#'  \item{nameProvider}{Name of the provider. (text string)}
#'  \item{addressProvider}{Street address of the provider. (text
#' string)} 
#'  \item{cityProvider}{The name of the city in which the
#' provider is located. (factor)} 
#'  \item{stateProvider}{The two-letter
#' postal code of the state in which the provider is located. (factor)}
#'  \item{zipProvider}{The provider's ZIP code. (factor)}
#'  \item{referralRegion}{An identifier for the region serviced by the
#' provider.} 
#' }
#' @source Extracted from the highly repetitive table provided by the Centers
#' for Medicare and Medicaid Services.
#' See
#' \url{http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html}
#' @keywords datasets
#' @seealso \code{\link{MedicareCharges}}
#' @examples
#' 
#' data(MedicareProviders)
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
#' These data have been pre-aggregated by state.
#' 
#' @name MedicareCharges
#' @docType data
#' @format A data frame with 5,025 observations on the following 4 variables.
#' \describe{ 
#'  \item{drg}{Code for the Direct Recovery Group: a
#' character string that looks like a number.} 
#'  \item{stateProvider}{the state providing the care.} 
#'  \item{num_charges}{the total number of charges.}
#'  \item{mean_charge}{the average charge for each \code{drg} across each state}
#'  }
#' @source Data from the Centers for Medicare and Medicaid Services.
#' See \url{http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html}.
#' @keywords datasets
#' @seealso \code{\link{MedicareProviders}}
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
#' @seealso \code{\link[mosaicData]{SAT}}
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
#' 
"WorldCities"

#' Votes from Scottish Parliament
#' @docType data
#' @description Votes recorded on each ballot by each member of the Scottish Parliament in 
#' 2008 along with information about party affiliation.
#' @format \code{Votes} is a data.frame with 103582 rows and 3 variables. 
#'  \describe{
#'  \item{\code{bill}}{an identifier for the bill}
#'  \item{\code{name}}{the name of the member of parliament}
#'  \item{\code{vote}}{1 means a vote for, -1 a vote against. 0 is an abstention.}
#'  }
#'  \code{Parties} is a data.frame with 134 rows, one for each member of parliament, and 2 variables. 
#'  \describe{
#'  \item{\code{party}}{the name of the political party the member belongs to}
#'  \item{\code{name}}{the name of the member of parliament}
#'  }
#'  
#' @details Almost all of the members of parliament belongs to a political party. This table
#' identifies that party. These data were provided by Caroline Ettinger and form part of her
#' senior honor's project at Macalester College. Prof. Andrew Beveridge supervised the
#' thesis. Ms. Ettinger used the vote data to explore how to extract the party association
#' of members purely from voting records. The \code{Parties} data was used to evaluate
#' the success of methods.
"Votes"

#' @rdname Votes
"Parties"

#' Ballots in the 2013 Mayoral election in Minneapolis
#' 
#' @description The choices marked on each (valid) ballot for the election, which was run
#' using a rank-choice, instant runoff system.
#' 
#' @details Ballot information for the 2013 Minneapolis Mayoral election, which was run
#' as a rank-choice election.  In rank-choice, a voter can indicate first,
#' second, and third choices.  If a voter's first choice is eliminated (by
#' being last in the count across voters), the second choice is promoted to
#' that voter's first choice, and similarly third -> second.  Eliminations are
#' done successively until one candidate has a majority of the first-choice
#' votes.
#' 
#' @name Minneapolis2013
#' @docType data
#' @format A data frame with 80,101 observations on the following 5 variables.
#' All are stored as character strings.  
#' \describe{
#'  \item{Precinct}{Precincts are sub-divisions within Wards}
#'  \item{First}{The voter's first choice} 
#'  \item{Second}{The voter's second choice}
#'  \item{Third}{The voter's third choice}
#'  \item{Ward}{The city is divided spatially into districts or 'wards'.
#' These are further subdivided into precincts. } 
#' }
#' @references Description of ranked-choice voting:
#' \url{http://vote.minneapolismn.gov/rcv/index.htm}
#' 
#' A Minnesota Public Radio story about the election ballot tallying process:
#' \url{http://minnesota.publicradio.org/display/web/2013/11/22/politics/ranked-choice-vote-count-programmers}
#' 
#' The Wikipedia article about the election:
#' \url{http://en.wikipedia.org/wiki/Minneapolis_mayoral_election,_2013}
#' @source Ballot data from the Minneapolis city government:
#' \url{http://vote.minneapolismn.gov/www/groups/public/@clerk/documents/webcontent/2013-mayor-cvr.xlsx}
#' @keywords datasets
#' @examples
#' 
#' data(Minneapolis2013)
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
#' @name OrdwayBirds
#' @docType data
#' @format A data frame with 15,829 observations on the bird's species, size,
#' date found, and band number.
#' 
#' Timestamp indicates when the data were entered into an electronic record,
#' not anything about the bird being described.
#' @source Jerald Dosch, Dept. of Biology, Macalester College: the manager of
#' the Study Area.
#' @keywords datasets
#' @examples
#' 
#' data(OrdwayBirds)
#' 
"OrdwayBirds"

#' Deaths and Pumps from 1854 London cholera outbreak
#' @docType data
#' @format An object of class \code{\link[sp]{SpatialPointsDataFrame}} 
#' whose data attribute has 250 rows and 2 columns.
#' @details Both spatial objects are projected in EPSG:27700, aka the British
#' National Grid.
#' @source \url{http://blog.rtwilson.com/john-snows-cholera-data-in-more-formats/}
#' @examples 
#' if (require(sp)) {
#'   plot(CholeraDeaths)
#' }
"CholeraDeaths"

#' @rdname CholeraDeaths
#' @format An object of class \code{\link[sp]{SpatialPointsDataFrame}}.
#' @docType data
"CholeraPumps"

#' Gene expression in cancer
#' 
#' The data come from a National Cancer Institute study of gene expression in
#' cell lines drawn from various sorts of cancer.
#' 
#' The expression data, \code{NCI60} is a dataframe of 41,078 gene probes (rows)
#' and 60 cell lines (columns).  The first column, \code{Probe} gives the name
#' of the Agilent microarray probe.  Each of the remaining columns is named for
#' a cell line.  The value is the log-2 expression associated with that probe
#' for the cell line.
#' 
#' \code{\link{Cancer}} gives information about each cell line.
#' 
#' @docType data
#' @format See the description
#' @seealso \code{\link{Cancer}}
#' @references Staunton et al. (\url{http://www.pnas.org/content/98/19/10787.full})
#' 
#' D.T. Ross et al. (2000) Nature Genetics, 24(3):227-234
#' (\url{http://discover.nci.nih.gov/host/2000_systematic_abstract.jsp})
#' @examples
#' 
#' data(NCI60_tiny) 
#' 
"NCI60_tiny"

#' @rdname NCI60_tiny
#' @docType data
"Cancer"
