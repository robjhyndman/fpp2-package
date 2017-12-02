# This file updates the data from fpp where available
# It also adds new data for use in fpp2

# Install CRAN version of fpp
#install.packages("fpp")

fppupdate <- function(x)
{
  xname <- deparse(substitute(x))
  oldx <- get(xname,pos='package:fpp2')
  if(!identical(x,oldx))
    message(paste(xname,"updated"))
  else
    message(paste(xname,"unchanged"))
}

# Load packages required
library(rdatamarket)
library(readxl)
library(fpp2)

## a10
# No known extended data available

## ausair
dminit("0b166801b1e14fecbc72f8904789cc46")
a <- dmlist("https://datamarket.com/data/set/14lt/air-transport-passengers-carried#!ds=14lt!gmr=28")
a <- a[order(a$Year),]
ausair <- ts(a$Value/1e6,start=1970)
plot(ausair)
lines(fpp::ausair, col='red')
fppupdate(ausair)
save(ausair, file="../data/ausair.rda")

## ausbeer and other manufacturing production series
# No longer updated, so these finish in 2010
ausproduction <- readxl::read_excel("abs830101.xls", sheet="Data1",
                                    skip=9, col_names=TRUE)
ausbeer <- ts(ausproduction[,"A2267030W"], frequency=4, start=1956)[,1]
qgas <- ts(ausproduction[,"A2267054R"], frequency=4, start=1956)
qauselec <- ts(ausproduction[,"A2267053L"], frequency=4, start=1956)[,1]/1e3
qcement <- ts(ausproduction[,"A2267040A"], frequency=4, start=1956)/1e3
# qcement data ceased in March 2014
qcement <- ts(c(qcement*1e3,2494,
                2296,
                2055,
                2273,
                2499,
                2390,
                2067,
                2223,
                2451,
                2503,
                2049,
                2528,
                2637,
                2565,
                2229),frequency=4, start=1956)/1e3

qgas <- ts(c(aggregate(forecast::gas, nf=4)/1000, window(qgas, start=c(1995,3))),
           start=1956, frequency=4)

save(ausbeer, file="../data/ausbeer.rda")
save(qgas, file="../data/qgas.rda")
save(qauselec, file="../data/qauselec.rda")
save(qcement, file="../data/qcement.rda")

plot(ausbeer)
lines(fpp::ausbeer, col='red')

## austa update

austa <- ts(c(window(fpp::austa, end=2004),
    c(5015049,5063435,5145489,5099436,5088166,5353702,5343327,
      5589162,5904884,6357183,6858953)/1e6),
    start=start(fpp::austa))
plot(austa)
lines(fpp::austa, col='red')
save(austa, file="../data/austa.rda")

## austourists
tmp <- na.omit(readxl::read_excel("austouristsUpdated2016.xlsx", skip=10)[,5])
austourists <- ts(c(window(fpp::austourists, end=c(2004,4)),
                    as.numeric(tmp[[1]])/1e6),
                  start=1999, frequency=4)
plot(austourists)
lines(fpp::austourists, col='red')
save(austourists, file="../data/austourists.rda")

## cafe
# Download from http://www.abs.gov.au/ausstats/meisubs.NSF/log?openagent&850101.xls&8501.0&Time%20Series%20Spreadsheet&5E102CC545C6F85CCA2581CC000D2753&0&Sep%202017&03.11.2017&Latest
auscafe <- ts(readxl::read_excel("abs850101.xls", sheet="Data1",
                                skip=9, col_names=TRUE)[,"A3348636C"]/1e3,
              start=c(1982,4), frequency=12)[,1]
save(auscafe, file="../data/auscafe.rda")

# cafe was quarterly

## credit
#drop?

## debitcards
dminit("c98bb1e36069456280dedf1a6211f07e")
a <- dmlist("https://datamarket.com/data/set/vw1/credit-and-debet-cards-usage-tourism#!ds=vw1!2yu=3:6nkt")
a$month <- as.numeric(factor(a$Month, levels=month.name))
a <- a[order(a$Year,a$month),]
debitcards <- ts(a$Value/1e3,start=2000,frequency=12)
fppupdate(debitcards)
save(debitcards, file="../data/debitcards.rda")

plot(debitcards)
lines(fpp::debitcards/1e3, col='red')

## departures
# Download from http://www.abs.gov.au/ausstats/abs@archive.nsf/log?openagent&340102.xls&3401.0&Time%20Series%20Spreadsheet&B3DDF0CC880C5BA4CA25817C0017524B&0&Jun%202017&15.08.2017&Latest
departures <- ts(readxl::read_excel("abs340102.xls", sheet="Data1",
                                 skip=9, col_names=TRUE),
                 start=1976, frequency=12)
departures <- departures[,c(2:4,6,9)]/1000
colnames(departures) <- c("permanent","reslong","vislong","resshort","visshort")
plot(departures)
plot(fpp::departures/1e3, col='red')
save(departures, file="../data/departures.rda")

##elecequip
dminit("d4aa1429fbbe4221989573e51b5d3696")
a <- dmlist("https://datamarket.com/data/set/19gk/industry-new-orders-index-monthly-data-2005100-nace-rev2#!ds=19gk!orw=1d:orx=4:ory=x")
elecequip <- ts(a$Value, start=1996, frequency=12)
fppupdate(elecequip)
save(elecequip, file="../data/elecequip.rda")

plot(elecequip)
lines(fpp::elecequip, col='red')

## elecsales
# No known source

## euretail
# Slight revision to last value, otherwise unchanged
dminit("cf4dd670c81946dcacbdfee2e1c62aae")
a <- dmlist("https://datamarket.com/data/set/18tp/retail-trade-quarterly-data-nace-rev-2#!ds=18tp!mqw=2:mqz=y")
euretail <- ts(a[order(a$Year.and.quarter),]$Value, start=1996, frequency=4)
save(euretail, file="../data/euretail.rda")

plot(euretail)
lines(fpp::euretail, col='red')

## fuel
# omit

## guinearice
dminit("3fbb705ec0aa4e7aa0e8a061b48539c4")
a <- dmlist("https://datamarket.com/data/set/1nnz/rice-production-metric-tons#!ds=1nnz!1o8c=4")
guinearice <- window(ts(a[order(a$Year),]$Value, start=1961),start=1970)/1e6
save(guinearice, file="../data/guinearice.rda")
plot(guinearice)
lines(fpp::guinearice, col='red')

## h02
# No new data available

## insurance
# No new data available

## livestock
# No new data available on datamarket

## melsyd
# No new data available

## oil
dminit("71bcd20bb05e4251a8b4cbaaa8c0cdf9")
a <- dmlist("https://datamarket.com/data/set/17tm/oil-production-tonnes#!ds=17tm!kqc=4")
oil <- ts(a$Value, start=1965)
plot(oil)
lines(fpp::oil, col='red')
save(oil, file="../data/oil.rda")

##sunspotarea
#Download "http://solarscience.msfc.nasa.gov/greenwch/sunspot_area.txt"
tmp <- read.table("sunspot_area.txt", header=TRUE)# Average over years
tail(tmp)
tmp <- split(tmp, tmp$Year)
tmp <- unlist(lapply(tmp,function(x)mean(x$Area)))
sunspotarea <- ts(tmp[-1], start=1875)
sunspotarea <- window(sunspotarea, end=2015) #Check last date
plot(sunspotarea)
lines(fpp::sunspotarea, col='red')
save(sunspotarea, file="../data/sunspotarea.rda")

## usconsumption
#dminit("a99c38757a6d4f43aad32434904e60dd")
#a <- dmlist("https://datamarket.com/data/set/1jzm/real-disposable-personal-income#!ds=1jzm")
#income <- ts(a[order(a$Year.and.quarter),"Value"], start=1947, frequency=4)
#dminit("21dbf05923ec4f239b040af395b88dc7")
#b <- dmlist("https://datamarket.com/data/set/1k4s/real-personal-consumption-expenditures-quarterly-data#!ds=1k4s")
#consumption <- ts(b[order(b$Year.and.quarter),"Value"], start=1947, frequency=4)
#usconsumption <- cbind(consumption,income)
uschange <- readr::read_csv("usconsumption.csv")
# Convert to percentage changes
uschange <- ts(uschange[,-1], start=1960, frequency = 4)
autoplot(uschange, facet=TRUE)
autoplot(fpp::usconsumption, facet=TRUE)
# Drop 1960s data
uschange <- window(uschange, start=1970)
save(uschange, file="../data/uschange.rda")

##usmelec
dminit("44bf42becc844ae09c06ca34fa3ce84e")
a <- dmlist("https://datamarket.com/data/set/1d9r/electricity-overview#!ds=1d9r!x0z=8")
usmelec <- ts(a[order(a$Year.and.month),3],start=1973, frequency=12)
plot(usmelec)
lines(fpp::usmelec, col='red')
save(usmelec, file="../data/usmelec.rda")

## vn
tmp <- readxl::read_excel("vnUpdated2016.xlsx")
vn <- ts(tmp[,10:17], start=1998, frequency=4)
colnames(vn) <- colnames(fpp::vn)
plot(vn)
plot(fpp::vn, col='red')
vn <- vn/1e3
save(vn, file="../data/vn.rda")

##wmurders
# No new data

## Temperatures
# Download from
temps <- readr::read_csv("IDCJAC0010_086077_1800_Data.csv")
moorabbin <- ts(temps[,6], frequency=365.25, start=1971)
maxtemp <- ts(unlist(lapply(split(temps,temps[,3]),
                  function(x){max(x[,6], na.rm=TRUE)})),
              start=1971)
maxtemp <- window(maxtemp, end=2016)
save(maxtemp, file="../data/maxtemp.rda")


## International arrivals to Australia
arrivals <- readr::read_csv("arrivals.csv", col_types='cdddd')
arrivals <- ts(as.matrix(arrivals[,2:5]), start=1981, frequency=4)/1e3
save(arrivals, file="../data/arrivals.rda")


# Marathon
marathon <- readr::read_csv("Marathon.csv")
marathon <- ts(marathon$Minutes, start=marathon$Year[1])
plot(marathon)
save(marathon, file="../data/marathon.rda")


# AEMO

library(dplyr)
aemo <- readr::read_csv("aemo2015/demand_VIC.csv")
temp <- readr::read_csv("aemo2015/temp_86071.csv")
firstday <- max(min(aemo$Date),min(temp$Date))
lastday <- min(max(aemo$Date),max(temp$Date))

aemo <- filter(aemo, Date >= firstday & Date <= lastday)
temp <- filter(temp, Date >= firstday & Date <= lastday)

library(lubridate)
dates <- as.Date(aemo$Date,origin="1899-12-30")
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
pubhol <- is.element(dates,hols)
dow <- wday(dates,label=TRUE)
workday <- dow != "Sun" & dow != "Sat" & !pubhol
demand <- cbind(Demand=aemo$OperationalLessIndustrial/1e3,
                WorkDay=workday,
                Temperature=temp$Temp)
library(forecast)
demand <- msts(demand,
                 seasonal.periods=c(48,48*7,48*365),
                 start=2002)
demand <- window(demand, start=2014, end=2014.999999)
plot(demand)
table(demand[,2])/48
elecdemand <- demand
save(elecdemand, file=paste("../data/elecdemand.rda",sep=""))

# elecdaily
elecdaily <- cbind(
  aggregate.ts(elecdemand[,"Demand"], nfrequency = 365),
  aggregate.ts(elecdemand[,c("WorkDay")],nfrequency = 365,mean),
  aggregate.ts(elecdemand[,c("Temperature")],nfrequency = 365,max)
)
colnames(elecdaily) <- c("Demand","WorkDay","Temperature")
elecdaily <- ts(elecdaily,frequency=7)
#elecdaily <- subset(elecdaily,end = 351)
save(elecdaily, file=paste("../data/elecdaily.rda",sep=""))

# Hyndsight page views
z <- read.csv("hyndsight.csv",header=TRUE,stringsAsFactors = FALSE)
x <- ts(z[,2],freq=7, start=c(1,4))
date <- z[,1]
rm(z)

hyndsight <- ts(x,freq=7, start=c(1,4))
save(hyndsight, file=paste("../data/hyndsight.rda",sep=""))


# Number of calls handled on weekdays between 7:00 am and 9:05 pm
# Five-minute call volume from March 3, 2003, to May 23, 2003
# in a large North American commercial bank.
calls <- unlist(read.csv("http://robjhyndman.com/data/callcenter.txt",
                         header=TRUE,sep="\t")[,-1])
calls <- msts(calls, start=1, seasonal.periods = c(169, 169*5))
save(calls, file=paste("../data/calls.rda",sep=""))

# GASOLINE

gasoline <- readxl::read_excel("WGFUPUS2w.xls", sheet=2, skip=3, col_names=FALSE)
gasoline <- ts(gasoline$X2[1:1355], frequency=365.25/7,
               start=1991.1)
window(gasoline, end=2016)
tail(gasoline)
plot(gasoline)
save(gasoline, file=paste("../data/gasoline.rda",sep=""))

# Google
goog <- ts(tail(rev(Quandl::Quandl("GOOG/NASDAQ_GOOGL")[,5]), 1000))
save(goog, file=paste("../data/goog.rda",sep=""))

# Fill in missing Olympics
olympic <- rbind(fma::olympic,
   data.frame(Year = c(1916, 1940, 1944, seq(2000,2016,by=4)),
              time = c(NA, NA, NA,43.84, 44.00, 43.75, 43.94, 43.03)))
# Turn it into a ts object
mens400 <- ts(olympic[order(olympic[,'Year']),'time'],
              start=min(olympic[,'Year']),
              frequency=1/4)

autoplot(mens400)
save(mens400, file=paste("../data/mens400.rda",sep=""))


# Prison

prison <- read.csv("prisonLF1.csv")

prison$t <- as.Date(prison$date, format = "%Y/%m/%d")
prison$count <- as.numeric(prison$count)
prison$quarter <- as.Date(cut(prison$t, breaks = "quarter"))
prison$year <- as.Date(cut(prison$t, breaks="year"))

