\name{sunspotarea}
\alias{sunspotarea}
\docType{data}
\title{
Annual average sunspot area (1875-2016)
}
\description{Annual averages of the daily sunspot areas (in units of millionths of a hemisphere) for the full sun. Sunspots are magnetic regions that appear as dark spots on the surface of the sun. The Royal Greenwich Observatory compiled daily sunspot observations from May 1874 to 1976. Later data are from the US Air Force and the US National Oceanic and Atmospheric Administration. The data have been callibrated to be consistent across the whole history of observations. More information is available at \url{http://solarscience.msfc.nasa.gov/greenwch.shtml}.
}
\usage{data(sunspotarea)}
\format{Annual time series of class \code{ts}.}

\source{
NASA. \url{http://solarscience.msfc.nasa.gov/greenwch/sunspot_area.txt}
}
\examples{
plot(sunspotarea)
}
\keyword{datasets}
