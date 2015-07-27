\name{plotproxy.error}
\alias{plotproxy.error}
\alias{plotproxy1}
\alias{plotproxy.all}
\alias{plotproxy.all2}
\alias{plotproxy.error11}

\title{Plot Output Jack-Knife}
\description{Plot output of proxyJK, the jackknife estimate of the
time series analysis fitting curves.
}
\usage{
plotproxy.error(x,y,gout, type=1, xlim=NULL, ylim=NULL, ylab="", xlab="", main="" )

plotproxy.all(gout, ylab1="", ylab2="",xlab="", main="",
xlim=NULL, ylim1=NULL, ylim2=NULL, legposition="topleft",
YAXstyle=0, pbox=TRUE,
legnames  = c('Phs', 'Pos', 'Amp', 'Prd')  )

plotproxy1(x, y, gout, xlim = NULL, ylim = NULL, ylab = "", xlab = "",
main = "")

plotproxy.error11(x, y, gout, type = 1, xlim = NULL,
ylim = NULL, ylab = "", xlab = "", main = "")

plotproxy.all2(gout, ylab1 = "", ylab2 = "", xlab = "", main = "",
xlim = NULL, ylim1 = NULL, ylim2 = NULL,
 legposition = "topleft", YAXstyle = 0,
pbox = TRUE, legnames = c("Phs", "Pos", "Amp",
 "Prd"))


}
\arguments{
  \item{x}{original x values from file
}
  \item{y}{original y  values from file
}
  \item{gout}{output of proxyJK
}
  \item{type}{type of error bar plotting: 1 = bars, 2=shaded
  }
  \item{xlim}{2-vector(limit on x-axis)
}
\item{ylim}{2-vector(limit on xy-axis)}
\item{ylim1}{2-vector(limit on xy-axis)}
\item{ylim2}{2-vector(limit on xy-axis)}


\item{ylab}{character, y-axis label}
\item{ylab1}{character, y-axis label}
\item{ylab2}{character, y-axis label}

 \item{xlab}{character, x-axis label}
 \item{main}{character, title label}
\item{legposition}{legend position
}
  \item{YAXstyle}{Style for Y-axis
}
  \item{pbox}{logical
}
  \item{legnames}{names for legend
}
}
\details{Takes output directly from program
}
\value{graphical side effects
}
\references{
Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.
}
\author{
Jonathan M. Lees<jonathan.lees@unc.edu>
}

\seealso{proxyJK
}

\examples{

\dontrun{
##  example to read in your data from csv file (for non ClamR data

## fn = "donna_viking_1.csv"
## C1 = scan(file=fn, what=list(mm="", o18=""), sep=",")
## x = as.numeric(C1$mm)
## y = as.numeric(C1$o18)
## x = x[!is.na(y)]
## y = y[!is.na(y)]


data(CLAM1)

x = CLAM1$x
y = CLAM1$y

dx = 3.392

gout = proxyJK(x, y, dx)

plotproxy1(x,y,gout)

}

}
\keyword{misc}
