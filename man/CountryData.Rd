\name{CountryData}
\alias{CountryData}
\docType{data}
\title{
Many variables on countries from the CIA factbook, 2014.
}
\description{
The CIA Factbook has geographic, demographic, and economic data on a country-by-country basis.  In the description of the variables, the 4-digit number indicates the code used to specify that variable on the data and documentation web site.  For instance, \url{https://www.cia.gov/library/publications/the-world-factbook/fields/2153.html} contains documentation for variable code 2153, network users.
}
\usage{data("CountryData")}
\format{
  A data frame on the following 76 variables for each of the Countries in the World. (256 countries are given.)
  \describe{
    \item{\code{country}}{Name of the country.}
    \item{\code{area}}{area (sq km), 2147}
    \item{\code{pop}}{number of people, 2119}
    \item{\code{growth}}{growth rate per year (\%),2002}
    \item{\code{birth}}{birth rate (#/1000), 2054}
    \item{\code{death}}{death rate (#/1000), 2066}
    \item{\code{netMigr}}{net migration per year (#/1000). Difference between incoming and outgoing. 2112}
    \item{\code{maternal}}{maternal deaths per 100000 live births. 2223}
    \item{\code{infant}}{infant deaths per 1000 live births. 2091}
    \item{\code{life}}{life expectancy (years), 2102}
    \item{\code{fert}}{children born/woman (#/person), 2127}
    \item{\code{health}}{health spending (\% of GDP), 2225}
    \item{\code{HIVrate}}{people with HIV (\% of population), 2155}
    \item{\code{HIVpeople}}{people with HIV (#), 2156}
    \item{\code{HIVdeath}}{deaths from HIV (#/year), 2157}
    \item{\code{obesity}}{fraction of population considered obese (\%), 2228}
    \item{\code{underweight}}{fraction of population considered underweight (\%), 2224}
    \item{\code{educ}}{education spending (\% of GDP), 2206}
    \item{\code{unemploymentYouth}}{youth unemployment (\%), 2229}
    \item{\code{GDP}}{Gross Domestic Product ($), 2001}
    \item{\code{GDPgrowth}}{growth in GDP (\%/year), 2003}
    \item{\code{GDPcapita}}{GDP per capita ($/person), 2004}
    \item{\code{saving}}{yearly money savings (\% of GDP), 2260}
    \item{\code{indProd}}{Industrial production growth rate (\%), 2089}
    \item{\code{labor}}{Labor force (people), 2095}
    \item{\code{unemployment}}{Unemployment rate (\%), 2129}
    \item{\code{family}}{Distribution of family income - Gini index (Gini index), 2172}
    \item{\code{tax}}{Taxes and other revenues (\% of GDP), 2221}
    \item{\code{budget}}{Budget surplus (+) or deficit (-) (\% of GDP), 2222}
    \item{\code{debt}}{Public debt (\% of GDP), 2186}
    \item{\code{inflation}}{Inflation rate (consumer prices) (\%), 2092}
    \item{\code{discount}}{Central bank discount rate (\%), 2207}
    \item{\code{lending}}{Commercial bank prime lending rate (\%), 2208}
    \item{\code{narrow}}{Stock of narrow money ($), 2214}
    \item{\code{broad}}{Stock of broad money ($), 2215}
    \item{\code{credit}}{Stock of domestic credit ($), 2211}
    \item{\code{shares}}{Market value of publicly traded shares ($), 2200}
    \item{\code{balance}}{Current account balance ($), 2187}
    \item{\code{exports}}{Exports ($), 2078}
    \item{\code{imports}}{Imports ($), 2087}
    \item{\code{gold}}{Reserves of foreign exchange and gold ($), 2188}
    \item{\code{externalDebt}}{Debt - external ($), 2079}
    \item{\code{homeStock}}{Stock of direct foreign investment - at home ($), 2198}
    \item{\code{abroadStock}}{Stock of direct foreign investment - abroad ($), 2199}
    \item{\code{elecProd}}{Electricity - production (kWh), 2232}
    \item{\code{elecCons}}{Electricity - consumption (kWh), 2233}
    \item{\code{elecExp}}{Electricity - exports (kWh), 2234}
    \item{\code{elecImp}}{Electricity - imports (kWh), 2235}
    \item{\code{elecCap}}{Electricity - installed generating capacity (kW), 2236}
    \item{\code{elecFossil}}{Electricity - from fossil fuels (\% of total installed capacity), 2237}
    \item{\code{elecNuc}}{Electricity - from nuclear fuels (\% of total installed capacity), 2239}
    \item{\code{elecHydro}}{Electricity - from hydroelectric plants (\% of total installed capacity), 2238}
    \item{\code{elecRenew}}{Electricity - from other renewable sources (\% of total installed capacity), 2240}
    \item{\code{oilProd}}{Crude oil - production (bbl/day), 2241}
    \item{\code{oilExp}}{Crude oil - exports (bbl/day), 2242}
    \item{\code{oilImp}}{Crude oil - imports (bbl/day), 2243}
    \item{\code{oilRes}}{Crude oil - proved reserves (bbl), 2244}
    \item{\code{petroProd}}{Refined petroleum products - production (bbl/day), 2245}
    \item{\code{petroCons}}{Refined petroleum products - consumption (bbl/day), 2246}
    \item{\code{petroExp}}{Refined petroleum products - exports (bbl/day), 2247}
    \item{\code{petroImp}}{Refined petroleum products - imports (bbl/day), 2248}
    \item{\code{gasProd}}{Natural gas - production (cu M), 2249}
    \item{\code{gasCons}}{Natural gas - consumption (cu M), 2250}
    \item{\code{gasExp}}{Natural gas - exports (cu M), 2251}
    \item{\code{gasImp}}{Natural gas - imports (cu M), 2252}
    \item{\code{gasRes}}{Natural gas - proved reserves (cu M), 2253}
    \item{\code{mainlines}}{Telephones - main lines in use (mainlines in use), 2150}
    \item{\code{cell}}{Telephones - mobile cellular (cellphones), 2151}
    \item{\code{netHosts}}{Internet hosts (#), 2184}
    \item{\code{netUsers}}{Internet users (#), 2153}
    \item{\code{airports}}{Airports (#), 2053}
    \item{\code{railways}}{Railways (km), 2121}
    \item{\code{roadways}}{Roadways (km), 2085}
    \item{\code{waterways}}{Waterways (km), 2093}
    \item{\code{marine}}{Merchant marine (# of ships), 2108}
    \item{\code{military}}{Military expenditures (\% of GDP), 2034}
  }
}
\details{
These data were collected using the \code{CIAdata()} function.

THE DOCUMENTATION NEEDS COMPLETING.  See the output of \code{CIAdata() and Google "CIA Factbook NNNN"}, where NNNN is the 4-digit code used for indexing the data at the CIA.
}
\source{
From the CIA World Factbook, \url{https://www.cia.gov/library/publications/the-world-factbook/}  For package maintainers: The lines to construct the file are in \code{inst/datafixes.R}.
}
\references{
}
\examples{
data(CountryData)
## maybe str(CountryData) ; plot(CountryData) ...
}
\keyword{datasets}
