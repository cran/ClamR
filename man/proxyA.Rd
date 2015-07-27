\name{proxyA}
\alias{proxyA}
\title{Optimum Wilkinson Curve Fitting
}
\description{Runs one cycle of optimum Wilkinson curve fitting for a single sinusoid fitting.
}
\usage{
proxyA(ax, ay, xin)
}
\arguments{
  \item{ax}{x-axis values
}
  \item{ay}{y-axis values
}
  \item{xin}{starting model: c( Phs,Pos,Amp,Prd)
}
}
\details{This program implements the Wilkinson and ivany approach to
  climate time series modeling.  This is used in the more sophisticated
  proxyJK code.
}
\value{
  Optimum model, vector of 4 values
}
\references{
Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.\

Wilkinson, B. H. and  Ivany, L. C.,	Paleoclimatic inference
  from stable isotope profiles of accretionary biogenic hardparts; a
  quantitative approach to the evaluation of incomplete data,  \emph{Palaeogeography, Palaeoclimatology, Palaeoecology}, vol. 185, no. 1-2, pp.95-114, 01 Sep 2002
}
\author{
Jonathan M. Lees<jonathan.lees@unc.edu>
}
\note{Uses stats package routine optim for optimization
}


\seealso{proxyJK
}
\examples{
data(CLAM1)
x = CLAM1$x
y = CLAM1$y

dx = 3.392

Aout = proxyA(x, y, dx)


}
\keyword{misc}
