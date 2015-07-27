\name{climate}
\alias{climate}
\docType{data}
\title{
Climate Record At Croig Cave
}
\description{
Application to modern climate record at Croig Cave and make comparison between reconstructed temperatures and instrumentally measured temperatures.
}
\usage{data("climate")}
\format{
  A data frame with 360 observations on the following 3 variables.
  \describe{
    \item{\code{Month}}{a numeric vector}
    \item{\code{overall}}{a numeric vector}
    \item{\code{Temperature}}{a numeric vector}
  }
}

\source{
Monthly sea surface temperature (SST) record for the years 1961-1990 derived from observations near Croig Cave, an archaeological site on the Isle of Mull in the Hebrides Islands west of mainland Scotland (Extended Reconstructed Sea Surface Temperature, Smith and Reynolds, 2004).
}
\references{
Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.

}
\examples{
data(climate)
climate_month <- climate$overall
climate_temp <- climate$Temperature

plot(climate_month,climate_temp,type="l",
    xlab="month",ylab=expression(paste("Temperature ("^"o","C)")))


}
\keyword{datasets}
