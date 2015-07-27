\name{rwp_limpet}
\alias{rwp_limpet}
\docType{data}
\title{ Reconstructed Temperature Record
}
\description{
Application to estimated temperatures from archaeological RWP shell 103a-39-1 with 3 years of temperature data.
}
\usage{data("rwp_limpet")}
\format{
  A data frame with 74 observations on the following 8 variables.
  \describe{
    \item{\code{distance_all}}{a numeric vector}
    \item{\code{temp_all}}{a numeric vector}
    \item{\code{distance1}}{a numeric vector}
    \item{\code{temp1}}{a numeric vector}
    \item{\code{distance2}}{a numeric vector}
    \item{\code{temp2}}{a numeric vector}
    \item{\code{distance3}}{a numeric vector}
    \item{\code{temp3}}{a numeric vector}
  }
}

\source{
RWP shell 103a-39-1
}
\references{
Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.

}
\examples{
data(rwp_limpet)
plot(rwp_limpet$distance_all, rwp_limpet$temp_all, type='b')

}
\keyword{datasets}
