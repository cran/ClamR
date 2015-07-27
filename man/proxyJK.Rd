\name{proxyJK}
\alias{proxyJK}
\title{Jackknife Wilkinson Curve Fitting
}
\description{Perform a jackknife estimate of proxy curve fitting for time series
analysis. 
}
\usage{
proxyJK(x, y, dx)
}
\arguments{
  \item{x}{x-axis values
}
  \item{y}{y-axis values
}
  \item{dx}{width of window to span in time
}
}
\details{Routine that improves on the Wilkinson and Ivany(2002)  approach to
  climate time series modeling. The jackknife is used to estimate the 95
  percent confidence bounds for the modeled estimates.
  dx should be chosen to be approximately half a cycle or more.
}
\value{
List:
  \item{OUT}{list( par, mid, ax, predmid,JKest, JKvar,  PSTILDE )}
  \item{omids}{output midpoints }
  \item{pmids}{values at output midpoints}
  \item{x}{input x}
  \item{y}{input y}
  \item{predy}{predicted y from spline fit}
}
\references{
 
Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.

  
}
\author{
Jonathan M. Lees<jonathan.lees@unc.edu>
}
\note{See proxyA for a duplication of the Wilkinson codes.
}

\seealso{proxyA
}
\examples{


\dontrun{

##########   this is for reading in data
########  fn = "/home/lees/DONNA/donna_viking_1.csv"

## fn = "donna_viking_1.csv"
######## C1 = scan(file=fn, what=list(mm="", o18=""), sep=",")
######## x = as.numeric(C1$mm)
######## y = as.numeric(C1$o18)
########x = x[!is.na(y)]
########y = y[!is.na(y)]


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

plotproxy.all2(gout, YAXstyle=1 )

}

}
\keyword{misc}
