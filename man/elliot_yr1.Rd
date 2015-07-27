\name{elliot_yr1}
\alias{elliot_yr1}

\docType{data}
\title{Elliot Data Summer
}
\description{
Two years of data from Elliot
}
\usage{data("elliot_yr1")}

\format{
  The format is:
List of 4
 $ date1     : num [1:28] 1995 1995 1995 1995 1995 ...
 $ d18o1     : num [1:28] -0.036 0.244 0.525 0.332 0.148 -0.43 -0.583 -0.366 -0.641 -0.86 ...
 $ date_temp1: num [1:31] 1995 1995 1995 1995 1995 ...
 $ d18o_pred1: num [1:31] -0.58 0 0.54 0.88 0.66 0.35 0.09 -0.09 -0.53 -1.1 ...
}
\details{
Data consists of date,  \eqn{\delta 18O}{delta-18O}, temperature and predicted anomaly for two years of data.
}
\source{
Data sets are
selected from the \eqn{\delta 18O}{delta-18O}  record of a modern 
Mercenaria mercenaria shell collected live from Cedar Key in northern
Florida and analyzed by 
Elliot et al. (2003). Series elliot_yr1 records one summer
(including the most negative \eqn{\delta 18O}{delta-18O}). 
Series elliot_yr2  records one winter (including the most positive  \eqn{\delta 18O}{delta-18O}).

Because the modern Mercenaria mercenaria shell by Elliot et al. (2003) 
is well dated and its in situ records of SST and salinity are
available,  the predicted \eqn{\delta 18O}{delta-18O}  are also derived 
from the local instrumental data. Temp is the predicted   \eqn{\delta 18O}{delta-18O} for the summer interval of 
Year1 and Temp2 is the predicted  \eqn{\delta 18O}{delta-18O}
for the winter interval of Year2.
}
\references{
Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.

}
\examples{
data(elliot_yr1)
plot(elliot_yr1$date1,elliot_yr1$d18o1,xlab="Age(years)",
     ylab=expression(delta*'18O(ppm VPDB)'), xlim=c(1994.9,1996.2), ylim=c(-2.5,2))

}
\keyword{datasets}
