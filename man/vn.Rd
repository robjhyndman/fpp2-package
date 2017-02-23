\name{vn}
\alias{vn}
\docType{data}
\title{
Quarterly visitor nights for various regions of Australia.
}
\description{
Total quarterly visitor nights (in millions) from 1998-2015 for eight regions of Australia:
\describe{
	\item{\code{Sydney}}{The Sydney metropolitan area.}
	\item{\code{NSW}}{New South Wales other than Sydney}
	\item{\code{Melbourne}}{The Melbourne metropolitan area.}
	\item{\code{VIC}}{Victoria other than Melbourne.}
	\item{\code{BrisbaneGC}}{The Brisbane and Gold Coast area.}
	\item{\code{QLD}}{Queensland other than Brisbane and the Gold Coast.}
	\item{\code{Capitals}}{The other five capital cities: Adelaide, Hobart, Perth, Darwin and Canberra.}
	\item{\code{Other}}{All other areas of Australia.}
}
}
\usage{data(vn)}
\format{Time series object of class \code{mts}.
}
\source{
Tourism Research Australia.
}

\examples{
autoplot(vn)
}
\keyword{datasets}
