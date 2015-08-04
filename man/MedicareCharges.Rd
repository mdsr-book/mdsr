\name{MedicareCharges}
\alias{MedicareCharges}
\docType{data}
\title{Charges to and Payments from Medicare}
\description{
These data for 2011, released in May 2013, describe how much hospitals charged Medicare for various inpatient procedures, how many were performed, and how much Medicare actually paid.}
\usage{data("MedicareCharges")}
\format{
  A data frame with 163065 observations on the following 5 variables.
  \describe{
    \item{\code{drg}}{Code for the Direct Recovery Group: a character string that looks like a number.}
    \item{\code{idProvider}}{a numeric vector: it should be a factor.}
    \item{\code{totalDischarges}}{a numeric vector}
    \item{\code{aveCharges}}{a numeric vector}
    \item{\code{avePayments}}{a numeric vector}
  }
  }
\details{
These data are part of a set with \code{DirectRecoveryGroups}, which gives a description of the medical procedure associated with each DRG, and \code{MedicareProviders}, which translates \code{idProvider} into a name, address, state, Zip, etc..
}
\source{
Data from the Centers for Medicare and Medicaid Services.  See \url{http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html}.
}
\examples{
data(MedicareCharges)
}
\keyword{datasets}
