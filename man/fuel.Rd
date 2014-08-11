\name{fuel}
\alias{fuel}
\docType{data}
\title{
Fuel economy data on 2009 vehicles in the US.
}
\description{
Fuel economy data taken from \url{http://www.fueleconomy.gov/feg/advancedSearch.htm} with search options 
\itemize{
\item Year: 2009
\item Vehicle/Fuel: Regular Gasoline
\item Transmission: Automatic
\item Drive Type: FWD, RWD
\item Cylinders: 3-5
}
Then GAS/E85 vehicles were removed.

}
\usage{data(fuel)
}
\format{
  \code{fuel} is a data frame with 134 observations on the following 8 variables.
  \describe{
    \item{\code{Model}}{a factor indicating the model of each vehicle.}
    \item{\code{Cylinders}}{a numeric vector with the number of cylinders of each vehicle}
    \item{\code{Litres}}{a numeric vector with the engine size in litres.}
    \item{\code{Barrels}}{a numeric vector containing the energy impact score: an estimate of the average number of barrels of petroleum used per year.}
    \item{\code{City}}{a numeric vector with estimated city mpg}
    \item{\code{Highway}}{a numeric vector with estimated highway mpg}
    \item{\code{Cost}}{a numeric vector containing annual fuel cost in US$}
    \item{\code{Carbon}}{a numeric vector containing the carbon footprint: the car's average CO2 emissions in tons per year, along with the CO2 emitted in producing and distributing the fuel.}
  }
}
\source{
\url{http://www.fueleconomy.gov/feg/}
}
\examples{
data(fuel)
}
\keyword{datasets}
