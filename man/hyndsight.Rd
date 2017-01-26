\name{hyndsight}
\alias{hyndsight}
\docType{data}
\title{
Daily pageviews for the Hyndsight blog. 30 April 2014 to 29 April 2015.
}
\description{
Hyndsight is Rob Hyndman's personal blog at \url{http://robjhyndman.com/hyndsight}. This series contains the daily pageviews for one year, beginning 30 April 2014. The frequency is set to 7, to allow the weekly pattern to be modelled.
}
\usage{data(hyndsight)}
\format{Time series object of class \code{ts}.
}
\source{
Rob Hyndman
}

\examples{
plot(hyndsight, xlab="Weeks")
}
\keyword{datasets}
