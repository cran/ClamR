\name{ClamR-package}
\alias{ClamR-package}
\alias{ClamR}
\docType{package}
\title{
Climate Change with Proxies
}
\description{

This program implements and improves upon the Wilkinson and Ivany approach to
  climate time series modeling. The jackknife is used to estimate the 95
  percent confidence bounds for the modeled estimates.
  dx should be chosen to be approximately half a cycle or more.

}

\author{
Jonathan M. Lees

Maintainer: Jonathan M. Lees<jonathan.lees@unc.edu>
}
\references{
Wilkinson, B. H. and  Ivany, L. C.,     Paleoclimatic inference
  from stable isotope profiles of accretionary biogenic hardparts; a
  quantitative approach to the evaluation of incomplete data,  \emph{Palaeogeography, Palaeoclimatology, Palaeoecology}, vol. 185, no. 1-2, pp.95-114, 01 Sep 2002.

Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.


}

\keyword{ package }

\examples{
\dontrun{
data(CLAM1)
x = CLAM1$x
y = CLAM1$y

dx = 3.392

gout = proxyJK(x, y, dx)

plotproxy1(x, y, gout)

par(mfrow=c(2,1))

plotproxy.error(x, y, gout, type = 1)
plotproxy.error(x, y, gout, type = 2)


par(mfrow=c(2,1))
plotproxy.error(x, y, gout, type = 2)

plotproxy.all2(gout,YAXstyle=1 )
}

}
