# This file updates the data from fpp where available
# It also adds new data for use in fpp2

# Load packages required
library(fpp2)
library(rdatamarket)
library(readxl)

#### a10
# No known extended data available
a10 <- fpp::a10
devtools::use_data(a10, overwrite = TRUE)

#### arrivals
# International arrivals to Australia
arrivals <- readr::read_csv("data-raw/arrivals.csv", col_types = "cdddd")
arrivals <- ts(as.matrix(arrivals[, 2:5]), start = 1981, frequency = 4) / 1e3
devtools::use_data(arrivals, overwrite = TRUE)

#### ausair
# Air transport passengers, Australia
dminit("0b166801b1e14fecbc72f8904789cc46")
a <- dmlist("https://datamarket.com/data/set/14lt/air-transport-passengers-carried#!ds=14lt!gmr=28")
a <- a[order(a$Year), ]
ausair <- ts(a$Value / 1e6, start = 1970)
plot(ausair)
lines(fpp::ausair, col = "red")
devtools::use_data(ausair, overwrite = TRUE)

#### ausbeer and other manufacturing production series
# No longer updated, so these finish in 2010
ausproduction <- readxl::read_excel(
  "data-raw/830101.xls", sheet = "Data1",
  skip = 9, col_names = TRUE
)
ausbeer <- ts(ausproduction[, "A2267030W"], frequency = 4, start = 1956)[, 1]
plot(ausbeer)
lines(fpp::ausbeer, col = "red")
devtools::use_data(ausbeer, overwrite = TRUE)

#### auscafe
# Download from http://www.abs.gov.au/ausstats/meisubs.NSF/log?openagent&850101.xls&8501.0&Time%20Series%20Spreadsheet&5E102CC545C6F85CCA2581CC000D2753&0&Sep%202017&03.11.2017&Latest
auscafe <- ts(
  readxl::read_excel(
    "data-raw/850101.xls", sheet = "Data1",
    skip = 9, col_names = TRUE
  )[, "A3348636C"] / 1e3,
  start = c(1982, 4), frequency = 12
)[, 1]
devtools::use_data(auscafe, overwrite = TRUE)

#### austa
# Provided by George
austa <- ts(
  c(
    window(fpp::austa, end = 2004),
    c(
      5015049, 5063435, 5145489, 5099436, 5088166, 5353702, 5343327,
      5589162, 5904884, 6357183, 6858953
    ) / 1e6
  ),
  start = start(fpp::austa)
)
plot(austa)
lines(fpp::austa, col = "red")
devtools::use_data(austa, overwrite = TRUE)

#### austourists
tmp <- na.omit(readxl::read_excel("data-raw/austouristsUpdated2016.xlsx", skip = 10)[, 5])
austourists <- ts(
  c(
    window(fpp::austourists, end = c(2004, 4)),
    as.numeric(tmp[[1]]) / 1e6
  ),
  start = 1999, frequency = 4
)
plot(austourists)
lines(fpp::austourists, col = "red")
devtools::use_data(austourists, overwrite = TRUE)

#### calls
# Number of calls handled on weekdays between 7:00 am and 9:05 pm
# Five-minute call volume from March 3, 2003, to May 23, 2003
# in a large North American commercial bank.
calls <- unlist(read.csv(
  "http://robjhyndman.com/data/callcenter.txt",
  header = TRUE, sep = "\t"
)[, -1])
calls <- msts(calls, start = 1, seasonal.periods = c(169, 169 * 5))
devtools::use_data(calls, overwrite = TRUE)

#### debitcards
dminit("c98bb1e36069456280dedf1a6211f07e")
a <- dmlist("https://datamarket.com/data/set/vw1/credit-and-debet-cards-usage-tourism#!ds=vw1!2yu=3:6nkt")
a$month <- as.numeric(factor(a$Month, levels = month.name))
a <- a[order(a$Year, a$month), ]
debitcards <- ts(a$Value / 1e3, start = 2000, frequency = 12)
plot(debitcards)
lines(fpp::debitcards / 1e3, col = "red")
devtools::use_data(debitcards, overwrite = TRUE)

#### departures
# Download from http://www.abs.gov.au/ausstats/abs@archive.nsf/log?openagent&340102.xls&3401.0&Time%20Series%20Spreadsheet&B3DDF0CC880C5BA4CA25817C0017524B&0&Jun%202017&15.08.2017&Latest
departures <- ts(
  readxl::read_excel(
    "data-raw/340102.xls", sheet = "Data1",
    skip = 9, col_names = TRUE
  ),
  start = 1976, frequency = 12
)
departures <- departures[, c(2:4, 6, 9)] / 1000
colnames(departures) <- c("permanent", "reslong", "vislong", "resshort", "visshort")
plot(departures)
plot(fpp::departures / 1e3, col = "red")
devtools::use_data(departures, overwrite = TRUE)

#### elecequip
dminit("d4aa1429fbbe4221989573e51b5d3696")
a <- dmlist("https://datamarket.com/data/set/19gk/industry-new-orders-index-monthly-data-2005100-nace-rev2#!ds=19gk!orw=1d:orx=4:ory=x")
elecequip <- ts(a$Value, start = 1996, frequency = 12)
plot(elecequip)
lines(fpp::elecequip, col = "red")
devtools::use_data(elecequip, overwrite = TRUE)

#### elecsales
# No update
elecsales <- fpp::elecsales
devtools::use_data(elecsales, overwrite = TRUE)

#### euretail
# Slight revision to last value, otherwise unchanged
dminit("cf4dd670c81946dcacbdfee2e1c62aae")
a <- dmlist("https://datamarket.com/data/set/18tp/retail-trade-quarterly-data-nace-rev-2#!ds=18tp!mqw=2:mqz=y")
euretail <- ts(a[order(a$Year.and.quarter), ]$Value, start = 1996, frequency = 4)
plot(euretail)
lines(fpp::euretail, col = "red")
devtools::use_data(euretail, overwrite = TRUE)

#### gasoline
gasoline <- readxl::read_excel("data-raw/WGFUPUS2w.xls", sheet = 2, skip = 3, col_names = FALSE)
gasoline <- ts(
  gasoline[, 2], frequency = 365.25 / 7,
  start = 1991.1
)
tail(gasoline)
plot(gasoline)
devtools::use_data(gasoline, overwrite = TRUE)

#### google
# Downloaded from https://finance.yahoo.com/quote/GOOG/history?period1=1361710800&period2=1486904400&interval=1d&filter=history&frequency=1d
goog <- ts(readr::read_csv("data-raw/GOOG.csv")$Close)
goog200 <- head(goog, 200)
devtools::use_data(goog, overwrite = TRUE)
devtools::use_data(goog200, overwrite = TRUE)

#### guinearice
dminit("3fbb705ec0aa4e7aa0e8a061b48539c4")
a <- dmlist("https://datamarket.com/data/set/1nnz/rice-production-metric-tons#!ds=1nnz!1o8c=4")
guinearice <- window(ts(a[order(a$Year), ]$Value, start = 1961), start = 1970) / 1e6
plot(guinearice)
lines(fpp::guinearice, col = "red")
devtools::use_data(guinearice, overwrite = TRUE)

#### h02
# No new data available
h02 <- fpp::h02
devtools::use_data(h02, overwrite = TRUE)

#### hyndsight
# Hyndsight page views
z <- read.csv("data-raw/hyndsight.csv", header = TRUE, stringsAsFactors = FALSE)
hyndsight <- ts(z[, 2], freq = 7, start = c(1, 4))
devtools::use_data(hyndsight, overwrite = TRUE)

#### insurance
# No new data available
insurance <- fpp::insurance
devtools::use_data(insurance, overwrite = TRUE)

#### livestock
# No new data available on datamarket
livestock <- fpp::livestock
devtools::use_data(livestock, overwrite = TRUE)

#### marathon
marathon <- readr::read_csv("data-raw/Marathon.csv")
marathon <- ts(marathon$Minutes, start = marathon$Year[1])
plot(marathon)
devtools::use_data(marathon, overwrite = TRUE)

#### maxtemp
# Download from
temps <- readr::read_csv("data-raw/IDCJAC0010_086077_1800_Data.csv")
moorabbin <- ts(temps[, 6], frequency = 365.25, start = 1971)
maxtemp <- ts(
  unlist(lapply(
    split(temps, temps[, 3]),
    function(x) {
      max(x[, 6], na.rm = TRUE)
    }
  )),
  start = 1971
)
maxtemp <- window(maxtemp, end = 2016)
devtools::use_data(maxtemp, overwrite = TRUE)

#### melsyd
# No new data available
melsyd <- fpp::melsyd
devtools::use_data(melsyd, overwrite = TRUE)

#### mens400
# Fill in missing Olympics
olympic <- rbind(
  fma::olympic,
  data.frame(
    Year = c(1916, 1940, 1944, seq(2000, 2016, by = 4)),
    time = c(NA, NA, NA, 43.84, 44.00, 43.75, 43.94, 43.03)
  )
)
mens400 <- ts(
  olympic[order(olympic[, "Year"]), "time"],
  start = min(olympic[, "Year"]),
  frequency = 1 / 4
)
plot(mens400)
devtools::use_data(mens400, overwrite = TRUE)

#### oil
dminit("71bcd20bb05e4251a8b4cbaaa8c0cdf9")
a <- dmlist("https://datamarket.com/data/set/17tm/oil-production-tonnes#!ds=17tm!kqc=4")
oil <- ts(a$Value, start = 1965)
plot(oil)
lines(fpp::oil, col = "red")
devtools::use_data(oil, overwrite = TRUE)

#### qauselec
qauselec <- ts(ausproduction[, "A2267053L"], frequency = 4, start = 1956)[, 1] / 1e3
devtools::use_data(qauselec, overwrite = TRUE)

#### qcement
# Update to when data collection ceased in March 2014
qcement <- ts(ausproduction[, "A2267040A"], frequency = 4, start = 1956) / 1e3
qcement <- ts(c(
  qcement * 1e3, 2494,
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
  2229
), frequency = 4, start = 1956) / 1e3
devtools::use_data(qcement, overwrite = TRUE)

#### qgas
qgas <- ts(ausproduction[, "A2267054R"], frequency = 4, start = 1956)
qgas <- ts(
  c(aggregate(forecast::gas, nf = 4) / 1000, window(qgas, start = c(1995, 3))),
  start = 1956, frequency = 4
)
devtools::use_data(qgas, overwrite = TRUE)

#### sunspotarea
# Download "http://solarscience.msfc.nasa.gov/greenwch/sunspot_area.txt"
tmp <- read.table("data-raw/sunspot_area.txt", header = TRUE) # Average over years
tail(tmp)
tmp <- split(tmp, tmp$Year)
tmp <- unlist(lapply(tmp, function(x) mean(x$Area)))
sunspotarea <- ts(tmp[-1], start = 1875)
sunspotarea <- window(sunspotarea, end = 2015) # Check last date
plot(sunspotarea)
lines(fpp::sunspotarea, col = "red")
devtools::use_data(sunspotarea, overwrite = TRUE)

## usconsumption (from fpp package)
# dminit("a99c38757a6d4f43aad32434904e60dd")
# a <- dmlist("https://datamarket.com/data/set/1jzm/real-disposable-personal-income#!ds=1jzm")
# income <- ts(a[order(a$Year.and.quarter),"Value"], start=1947, frequency=4)
# dminit("21dbf05923ec4f239b040af395b88dc7")
# b <- dmlist("https://datamarket.com/data/set/1k4s/real-personal-consumption-expenditures-quarterly-data#!ds=1k4s")
# consumption <- ts(b[order(b$Year.and.quarter),"Value"], start=1947, frequency=4)
# usconsumption <- cbind(consumption,income)

#### uschange
uschange <- readr::read_csv("data-raw/usconsumption.csv")
# Convert to percentage changes
uschange <- ts(uschange[, -1], start = 1960, frequency = 4)
autoplot(uschange, facet = TRUE)
autoplot(fpp::usconsumption, facet = TRUE)
# Drop 1960s data
uschange <- window(uschange, start = 1970)
devtools::use_data(uschange, overwrite = TRUE)

#### usmelec
dminit("44bf42becc844ae09c06ca34fa3ce84e")
a <- dmlist("https://datamarket.com/data/set/1d9r/electricity-overview#!ds=1d9r!x0z=8")
usmelec <- ts(a[order(a$Year.and.month), 3], start = 1973, frequency = 12)
plot(usmelec)
lines(fpp::usmelec, col = "red")
devtools::use_data(usmelec, overwrite = TRUE)

# #### vn
# tmp <- readxl::read_excel("data-raw/vnUpdated2016.xlsx")
# vn <- ts(tmp[,10:17], start=1998, frequency=4)
# colnames(vn) <- colnames(fpp::vn)
# plot(vn)
# plot(fpp::vn, col='red')
# vn <- vn/1e3
# devtools::use_data(vn, overwrite=TRUE)

#### visnights
visnights <- read.csv("data-raw/vn2.csv")
visnights <- ts(visnights, start = 1998, frequency = 4)
devtools::use_data(visnights, overwrite = TRUE)

#### wmurders
# No new data
wmurders <- fpp::wmurders
devtools::use_data(wmurders, overwrite = TRUE)
