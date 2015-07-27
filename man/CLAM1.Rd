\name{CLAM1}
\alias{CLAM1}
\docType{data}
\title{Clam Proxy Data
}
\description{
Proxy data from the Orknay Islands
}
\usage{data(CLAM1)}
\format{
  The format is:
List of 2
 $ x: num [1:91] 0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 ...
 $ y: num [1:91] 2.14 2.11 2.4 2.21 2.32 2.44 2.85 2.78 2.27 2.05 ...
}
\details{
Duplicate data has been removed.
}
\source{
One-year data interval (4.68-9.31 mm) of 
\eqn{\delta-18O}{delta 18O}  record of an archaeological limpet Patella vulgata
(specimen QG2-1064-1) from Orkney, Scotland (Surge and Barrett, 2012).
}
\references{
Wang, T., Surge, D.,  and Lees, J. M., (2015) ClamR: A Statistical Evaluation of Isotopic and Temperature Records in Sclerochronologic Studies. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology},  doi:10.1016/j.palaeo.2015.07.008.
}
\examples{
data(CLAM1)
## maybe str(CLAM1) ; plot(CLAM1) ...
plot(CLAM1$x, CLAM1$y, type="b", xlab="Distance", ylab="d18O" )

\dontrun{
###### this is an example from Wang et al.:
####  it takes too long to run on CRAN, but should work

shellx=CLAM1$x[38:70]
shelly=CLAM1$y[38:70]

window_shell=windowsize(shellx,shelly,1.8,9.4,0.2)

#the window size is 5mm, and make all the plots together
gout_shell = proxyJK(shellx, shelly, 5)

par(mfrow=c(3,2))
plot(shellx,shelly,type="b", xlab="Distance from Margin (mm)",
     ylab=expression(delta*"18O(ppm VPDB)"),  
     xlim=c(4,10), ylim = c(1.5,4))
plot((window_shell$win)/2,window_shell$error,xlab="Window Size (mm)", 
     ylab="Error",  xlim=c(1.6/2,9.4/2), ylim=c(0,0.5))
abline(v=4.63/2, lty="dotdash",col="black")
abline(v=5/2, col="black")
plotproxy1(shellx, shelly, gout_shell, xlim=c(4,10), ylim = c(1.5,4),
          xlab="Distance from Margin (mm)",
          ylab=expression(delta*"18O(ppm VPDB)"), main="")
plotproxy.all(gout_shell,YAXstyle=1, xlim=c(4,10), ylim1=c(0,4), 
             ylim2=c(-15,5))
plotproxy.error(shellx, shelly, gout_shell, type = 1, xlim=c(4,10), 
               ylim = c(1.5,4), xlab="Distance from Margin (mm)",
               ylab=expression(delta*"18O(ppm VPDB)"))
plotproxy.error(shellx, shelly, gout_shell, type = 2, xlim=c(4,10),
               ylim = c(1.5,4), xlab="Distance from Margin (mm)",
               ylab=expression(delta*"18O(ppm VPDB)"))



}

}
\keyword{datasets}
