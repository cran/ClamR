\name{SinMod}
\alias{SinMod}
\title{Sine Model of climate time series
}
\description{Sine Model of climate time series
}
\usage{
SinMod(x, myEx, dC2)
}
\arguments{
  \item{x}{input model x consisting of 4 values, phase, position,
    amplitude, period
}
 \item{myEx}{externally defined X-values}
 \item{dC2}{externally defined  observations at X}



}
\details{This is the function used in optimization of sinusoidal fits to
  climate data.
}
\value{squared sum of difference between obsereved and predicted
}
\references{
Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.
}
\author{
Jonathan M. Lees<jonathan.lees@unc.edu>
}
\note{Uses stats package for optimization
}

\seealso{optim, proxyA, proxyJK
}
\examples{
data(CLAM1)
x = CLAM1$x
y = CLAM1$y
 dx = 3.392

A1 = proxyA(x, y, dx)

RMSout = SinMod(A1$par, x, y)

}


\keyword{misc}
