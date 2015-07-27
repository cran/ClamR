\name{windowsize}
\alias{windowsize}
\title{Find Window Size
}
\description{Estimate optimal window size for seasonal time
  series analysis.
}
\usage{
windowsize(x, y, winmin, winmax, winstep)
}
\arguments{
  \item{x}{original x values from file

}
  \item{y}{original y  values from file
}
  \item{winmin}{Minimum window size
}
  \item{winmax}{Maximum window size
}
  \item{winstep}{step size
}
}

\value{
  \item{win}{optimum window length}
  \item{error}{error for win}
}

\author{
Jonathan M. Lees<jonathan.lees@unc.edu>
}

\references{
Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.
}

\examples{
\dontrun{
data(CLAM1)
shellx=CLAM1$x[38:70]
shelly=CLAM1$y[38:70]

window_shell=windowsize(shellx,shelly,1.8,9.4,0.2)

}


}
\keyword{misc}
