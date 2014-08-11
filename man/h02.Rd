\name{h02}
\alias{h02}
\docType{data}
\title{
Monthly cortecosteroid drug sales in Australia from 1992 to 2008.
}
\description{
Total monthly scripts for pharmaceutical products falling under ATC code H02, as recorded by the Australian Health Insurance Commission. Measured in millions of scripts.
}
\usage{data(h02)}

\format{Monthly time series of class \code{ts}.}

\source{Medicare Australia}

\examples{
plot(h02)
seasonplot(h02)
}
\keyword{datasets}
