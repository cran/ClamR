\name{elliot_yr2}

\alias{elliot_yr2}

\docType{data}
\title{Elliot Data Winter
}
\description{
Winter season of data from Elliot data.
}

\usage{data("elliot_yr2")}

\format{
  The format is:
List of 4
 $ date1     : num [1:28] 1995 1995 1995 1995 1995 ...
 $ d18o1     : num [1:28] -0.036 0.244 0.525 0.332 0.148 -0.43 -0.583 -0.366 -0.641 -0.86 ...
 $ date_temp1: num [1:31] 1995 1995 1995 1995 1995 ...
 $ d18o_pred1: num [1:31] -0.58 0 0.54 0.88 0.66 0.35 0.09 -0.09 -0.53 -1.1 ...
}
\details{
Data consists of date, \eqn{\delta O18}{delta-18O}, temperature and predicted data for winter season of data.
}
\source{
See explanation in elliot_yr1.
}

\references{
Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.

}
\examples{

data(elliot_yr2)
plot(elliot_yr2$date2,elliot_yr2$d18o2,xlab="date(year)",
ylab=expression(delta*'18O(ppm VPDB)'), xlim=c(1995.2,1996.85), ylim=c(-2.5,1.8))

}
\keyword{datasets}
