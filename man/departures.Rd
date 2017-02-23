\name{departures}
\alias{departures}
\docType{data}
\title{
Total monthly departures from Australia
}
\description{
Overseas departures from Australia: permanent departures, long-term (more than one year) residents departing, long-term (more than one year) visitors departing, short-term (less than one year) residents departing and short-term (less than one year) visitors departing. January 1976 - November 2016.

}
\usage{data(departures)}

\format{Multiple monthly time series of class \code{mts} containing the following series:
  \describe{
    \item{\code{permanent}}{a monthly time series of the permanent departures from Australia.}
    \item{\code{reslong}}{a monthly time series of the long-term resident departures from Australia.}
    \item{\code{vislong}}{a monthly time series of the long-term visitor departures from Australia.}
    \item{\code{resshort}}{a monthly time series of the short-term resident departures from Australia.}
    \item{\code{visshort}}{a monthly time series of the short-term visitor departures from Australia.}
}}


\source{Australian Bureau of Statistics. Catalogue No 3401.02.}

\examples{
autoplot(departures, facets=TRUE)
}
\keyword{datasets}

