\name{MedicareProviders}
\alias{MedicareProviders}
\docType{data}
\title{
Medicare Providers
}
\description{
Name and location data for the medicare providers in the \code{MedicareCharges} data table.
}
\usage{data("MedicareProviders")}
\format{
  A data frame with 3337 observations on the following 7 variables.
  \describe{
    \item{\code{idProvider}}{a unique number assigned to each provider}
    \item{\code{nameProvider}}{Name of the provider. (text string)}
    \item{\code{addressProvider}}{Street address of the provider. (text string)}
    \item{\code{cityProvider}}{The name of the city in which the provider is located. (factor)}
    \item{\code{stateProvider}}{The two-letter postal code of the state in which the provider is located. (factor)}
    \item{\code{zipProvider}}{The provider's ZIP code. (factor)}
    \item{\code{referralRegion}}{An identifier for the region serviced by the provider.}
    }
    }
\details{
This data table is related to \code{MedicareCharges} data.
}
\source{
Extracted from the highly repetitive table provided by the Centers for Medicare and Medicaid Services.  See \url{http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html}}
\examples{
head(DirectRecoveryGroups)
}
\keyword{datasets}
