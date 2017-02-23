\name{h02}
\alias{h02}
\docType{data}
\title{
Monthly cortecosteroid drug sales in Australia from July 1991 to June 2008.
}
\description{
Total monthly scripts for pharmaceutical products falling under ATC code H02, as recorded by the Australian Health Insurance Commission. Measured in millions of scripts.
}
\usage{data(h02)}

\format{Monthly time series of class \code{ts}.}

\source{Medicare Australia}

\examples{
autoplot(h02)
ggseasonplot(h02)
}
\keyword{datasets}
