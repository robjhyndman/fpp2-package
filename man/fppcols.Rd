\name{fppcols}
\alias{fppcols}
\title{Color Palette for "Forecasting: Principles and Practice"}
\usage{
fppcols(...)
}
\arguments{
\item{...}{Arguments passed on to \code{\link[ggplot2]{discrete_scale}}
to control name, limits, breaks, labels and so forth.}
}
\description{
An 8-color colorblind safe qualitative discrete palette used for the figures in "Forecasting: Principles and Practice" by Hyndman and Athanasopoulos (2017, 2nd ed).
}
\examples{
fc1 <- naive(WWWusage,h=20)
fc2 <- forecast(ets(WWWusage), h=20)
fc3 <- forecast(auto.arima(WWWusage), h=20)
autoplot(WWWusage) +
  geom_forecast(fc1, series="Naive", PI=FALSE) +
  geom_forecast(fc2, series="ETS", PI=FALSE) +
  geom_forecast(fc3, series="ARIMA", PI=FALSE) +
  ggtitle("Forecasts for internet users")  +
  xlab("Minute") + ylab("Number of users") +
  guides(colour=guide_legend(title="Forecast")) + 
  fppcols()
}
\references{
Chang, W. "\href{http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#a-colorblind-friendly-palette}{Cookbook for R}"
\url{http://jfly.iam.u-tokyo.ac.jp/color}

Hyndman, R.J., and G. Athanasopoulos (2017) "Forecasting: Principles and Practice", \url{OTexts.com/fpp}. 
}

