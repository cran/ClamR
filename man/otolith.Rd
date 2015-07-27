\name{otolith}
\alias{otolith}
\docType{data}
\title{otolith Proxy Data
}
\description{
Early Oligocene otolith from the US Gulf Coast.
}
\usage{data(otolith)}
\format{
 A data frame with 63 observations on the following 2 variables.
  \describe{
    \item{\code{distance}}{a numeric vector}
    \item{\code{d18O}}{a numeric vector}
  }
}
\details{
Duplicate data have been removed.
}
\source{
\eqn{\delta 18O}{delta-18O} record of an aragonite otolith from the early
Oligocene Rosefield Clay in the US Gulf Coast (Ivany, 2000).
}
\references{
Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.\

}
\examples{
data(otolith)

plot(otolith$distance, otolith$d180)


}
\keyword{datasets}
