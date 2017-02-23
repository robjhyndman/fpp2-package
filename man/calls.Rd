\name{calls}
\alias{calls}
\docType{data}
\title{Call volume for a large North American bank}
\description{Five-minute call volume handled on weekdays between 7:00am and 9:05pm, from 3 March 2003 to 23 May 2003.
}

\usage{data(calls)}
\format{Time series object of class \code{msts}.
}
\source{
Rob Hyndman
}

\examples{
autoplot(calls, xlab="Weeks")
}
\keyword{datasets}
