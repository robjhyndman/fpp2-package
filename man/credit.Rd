\name{credit}
\alias{credit}
\docType{data}
\title{Credit ratings on personal loans from an Australian bank.
}
\description{
A random sample of 500 observations of customers applying for personal loans at an Australian bank. All customers were 25 years old or under.
}
\usage{data(credit)}
\format{
  A data frame with 500 observations on the following 7 variables.
  \describe{
    \item{\code{score}}{a numeric vector giving the credit scores calculated by the bank on a scale from 0 to 100.}
    \item{\code{savings}}{a numeric vector giving the total personal savings of each customer (in thousands of $).}
    \item{\code{income}}{a numeric vector giving the total net income of each customer (in thousands of $).}
    \item{\code{fte}}{\code{TRUE} if the customer has full time employment, and \code{FALSE} otherwise.}
    \item{\code{single}}{\code{TRUE} if the customer is single, and \code{FALSE} otherwise.}
    \item{\code{time.address}}{a numeric vector giving the number of months each customer has lived at their current address.}
    \item{\code{time.employed}}{a numeric vector giving the number of months each customer has been with their current employer.}
  }
}

\examples{
data(credit)
}
\keyword{datasets}
