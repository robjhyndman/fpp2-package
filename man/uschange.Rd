\name{uschange}
\alias{usconsumption}
\alias{uschange}
\docType{data}
\title{
Growth rates of personal consumption and personal income in the USA.
}
\description{
Percentage changes in quarterly personal consumption expenditure, personal disposable income, production, savings and the unemployment rate for the US, 1960 to 2016.
}
\usage{data(uschange)}
\format{Time series object of class \code{ts}.
}
\source{
Federal Reserve Bank of St Louis. \url{http://data.is/AnVtzB}. \url{http://data.is/wQPcjU}.
}

\examples{
autoplot(uschange, facet=TRUE)
}
\keyword{datasets}
