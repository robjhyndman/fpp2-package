# AEMO

library(dplyr)
library(lubridate)
library(forecast)

aemo <- readr::read_csv("data-raw/aemo2015/demand_VIC.csv")
temp <- readr::read_csv("data-raw/aemo2015/temp_86071.csv")
aemo$Date <- as.Date(aemo$Date,origin="1899-12-30")
temp$Date <- as.Date(temp$Date,origin="1899-12-30")
firstday <- as.Date("2014-01-01",origin="1899-12-30")
lastday <- as.Date("2014-12-31",origin="1899-12-30")

aemo <- filter(aemo, Date >= firstday & Date <= lastday)
temp <- filter(temp, Date >= firstday & Date <= lastday)

hols <- as.Date(c(
          "2014-01-01",
          "2014-01-27",
          "2014-03-10",
          "2014-04-18",
          "2014-04-21",
          "2014-04-25",
          "2014-06-09",
          "2014-11-04",
          "2014-12-25",
          "2014-12-26"))
pubhol <- is.element(aemo$Date,hols)
dow <- wday(aemo$Date,label=TRUE)
workday <- dow != "Sun" & dow != "Sat" & !pubhol
demand <- cbind(Demand=aemo$OperationalLessIndustrial/1e3,
                WorkDay=workday,
                Temperature=temp$Temp)
demand <- msts(demand,
                 seasonal.periods=c(48,48*7,48*365),
                 start=2014)
plot(demand)
table(demand[,2])/48
elecdemand <- demand
devtools::use_data(elecdemand, overwrite=TRUE)

# elecdaily
elecdaily <- cbind(
  aggregate.ts(elecdemand[,"Demand"], nfrequency = 365),
  aggregate.ts(elecdemand[,c("WorkDay")],nfrequency = 365,mean),
  aggregate.ts(elecdemand[,c("Temperature")],nfrequency = 365,max)
)
colnames(elecdaily) <- c("Demand","WorkDay","Temperature")
elecdaily <- ts(elecdaily,frequency=7)
devtools::use_data(elecdaily, overwrite=TRUE)
