#' Monthly anti-diabetic drug subsidy in Australia from 1991 to 2008.
#'
#' Monthly government expenditure (millions of dollars) as part of the
#' Pharmaceutical Benefit Scheme for products falling under ATC code A10
#' as recorded by the Australian Health Insurance Commission.
#' July 1991 - June 2008.
#'
#' @name a10
#' @docType data
#' @format Monthly time series of class \code{ts}.
#' @source Medicare Australia
#' @keywords datasets
#' @examples
#'
#' autoplot(a10)
#' ggseasonplot(a10)
#'
#' @import expsmooth fma forecast ggplot2
NULL

#' International Arrivals to Australia
#'
#' Quarterly international arrivals (in thousands) to Australia from Japan, New
#' Zealand, UK and the US.  1981Q1 - 2012Q3.
#'
#'
#' @name arrivals
#' @docType data
#' @format Quarterly time series of class \code{ts}.
#' @source Tourism Research Australia.
#' @keywords datasets
#' @examples
#'
#' autoplot(arrivals)
#'
NULL

#' Air Transport Passengers Australia
#'
#' Total annual air passengers (in millions) including domestic and
#' international aircraft passengers of air carriers registered in Australia.
#' 1970-2016.
#'
#'
#' @name ausair
#' @docType data
#' @format Annual time series of class \code{ts}.
#' @source World Bank.
#' @keywords datasets
#' @examples
#'
#' autoplot(ausair)
#'
NULL

#' Quarterly Australian Beer production
#'
#' Total quarterly beer production in Australia (in megalitres) from 1956:Q1 to
#' 2010:Q2.
#'
#'
#' @name ausbeer
#' @docType data
#' @format Quarterly time series of class \code{ts}.
#' @source Australian Bureau of Statistics. Cat. 8301.0.55.001.
#' @keywords datasets
#' @examples
#'
#' data(ausbeer)
#' ggseasonplot(ausbeer)
#'
NULL

#' International visitors to Australia
#'
#' Total international visitors to Australia (in millions). 1980-2015.
#'
#'
#' @name austa
#' @docType data
#' @format Annual time series of class \code{ts}.
#' @source International Visitor Survey, Tourism Research Australia.
#' @keywords datasets
#' @examples
#'
#' autoplot(austa)
#'
NULL

#' International Tourists to Australia: Total visitor nights.
#'
#' Quarterly visitor nights (in millions) spent by international tourists to
#' Australia. 1999-2015.
#'
#'
#' @name austourists
#' @docType data
#' @format Quarterly time series of class \code{ts}.
#' @source Tourism Research Australia.
#' @keywords datasets
#' @examples
#'
#' autoplot(austourists)
#'
NULL

#' Monthly expenditure on eating out in Australia
#'
#' The total monthly expenditure on cafes, restaurants and takeaway food
#' services in Australia ($billion). April 1982 - September 2017.
#'
#'
#' @name auscafe
#' @docType data
#' @format Monthly time series of class \code{ts}.
#' @source Australian Bureau of Statistics. Catalogue No. 8501.0
#' @keywords datasets
#' @examples
#'
#' autoplot(auscafe)
#'
NULL

#' Call volume for a large North American bank
#'
#' Five-minute call volume handled on weekdays between 7:00am and 9:05pm,
#' beginning 3 March 2003 for 164 days.
#'
#'
#' @name calls
#' @docType data
#' @format Time series object of class \code{msts}.
#' @source Rob Hyndman
#' @keywords datasets
#' @examples
#'
#' autoplot(calls, xlab="Weeks")
#'
NULL

#' Retail debit card usage in Iceland.
#'
#' Monthly retail debit card usage in Iceland (million ISK). January 2000 -
#' August 2013.
#'
#'
#' @name debitcards
#' @docType data
#' @format Monthly time series of class \code{ts}.
#' @source Statistics Iceland.
#' @keywords datasets
#' @examples
#'
#' autoplot(debitcards)
#'
NULL

#' Total monthly departures from Australia
#'
#' Overseas departures from Australia: permanent departures, long-term (more
#' than one year) residents departing, long-term (more than one year) visitors
#' departing, short-term (less than one year) residents departing and
#' short-term (less than one year) visitors departing. January 1976 - November
#' 2016.
#'
#'
#' @name departures
#' @docType data
#' @format Multiple monthly time series of class \code{mts} containing the
#' following series:
#' \tabular{ll}{
#'   permanent \tab permanent departures from Australia.\cr
#'   reslong   \tab long-term resident departures from Australia.\cr
#'   vislong   \tab long-term visitor departures from Australia.\cr
#'   resshort  \tab short-term resident departures from Australia.\cr
#'   visshort  \tab short-term visitor departures from Australia.
#' }
#' @source Australian Bureau of Statistics. Catalogue No 3401.02.
#' @keywords datasets
#' @examples
#'
#' autoplot(departures, facets=TRUE)
#'
NULL

#' Half-hourly and daily electricity demand for Victoria, Australia, in 2014
#'
#' \code{elecdemand} is a half-hourly time series matrix with three columns:
#'   \tabular{ll}{
#'     Demand:      \tab Total electricity demand in GW for Victoria, Australia,
#'                       every half-hour during 2014.\cr
#'     WorkDay:     \tab taking value 1 on work days, and 0 otherwise.\cr
#'     Temperature: \tab half-hourly temperatures for Melbourne
#'                       (BOM site 086071).
#' }
#' \code{elecdaily} is a daily time series matrix with three columns:
#'   \tabular{ll}{
#'     Demand:      \tab Total electricity demand in GW for Victoria, Australia,
#'                       every day during 2014.\cr
#'     WorkDay:     \tab taking value 1 on work days, and 0 otherwise.\cr
#'     Temperature: \tab maximum daily temperatures for Melbourne
#'                       (BOM site 086071).
#' }
#'
#' This data is for operational demand, which is the demand met by local
#' scheduled generating units, semi-scheduled generating units, and
#' non-scheduled intermittent generating units of aggregate capacity larger
#' than 30 MW, and by generation imports to the region. The operational demand
#' excludes the demand met by non-scheduled non-intermittent generating units,
#' non-scheduled intermittent generating units of aggregate capacity smaller
#' than 30 MW, exempt generation (e.g. rooftop solar, gas tri-generation, very
#' small wind farms, etc), and demand of local scheduled loads. It also
#' excludes some very large industrial users (such as mines or smelters).
#'
#' @name elecdemand
#' @docType data
#' @format Multiple time series of class \code{mts}.
#' @source Australian Energy Market Operator, and the Australian Bureau of
#' Meteorology.
#' @keywords datasets
#' @examples
#'
#' summary(elecdemand)
#' summary(elecdaily)
#'
NULL

#' @name elecdaily
#' @rdname elecdemand
#'
NULL

#' Electrical equipment manufactured in the Euro area.
#'
#' Monthly manufacture of electrical equipment: computer, electronic and
#' optical products. January 1996 - March 2012. Data adjusted by working days;
#' Euro area (17 countries). Industry new orders index. 2005=100.
#'
#'
#' @name elecequip
#' @docType data
#' @format Time series object of class \code{ts}.
#' @source Eurostat.
#' @keywords datasets
#' @examples
#'
#' autoplot(elecequip)
#'
NULL

#' Electricity sales to residential customers in South Australia.
#'
#' Annual electricity sales for South Australia in GWh from 1989 to 2008.
#' Electricity used for hot water has been excluded.
#'
#'
#' @name elecsales
#' @docType data
#' @format Time series object of class \code{ts}.
#' @source Australian Energy Market Operator.
#' @keywords datasets
#' @examples
#'
#' autoplot(elecsales)
#'
NULL

#' Quarterly retail trade: Euro area.
#'
#' Quarterly retail trade index in the Euro area (17 countries), 1996-2011,
#' covering wholesale and retail trade, and repair of motor vehicles and
#' motorcycles. (Index: 2005 = 100).
#'
#'
#' @name euretail
#' @docType data
#' @format Quarterly time series of class \code{ts}.
#' @source Eurostat.
#' @keywords datasets
#' @examples
#'
#' autoplot(euretail)
#'
NULL

#' US finished motor gasoline product supplied.
#'
#' Weekly data beginning 2 February 1991, ending 20 January 2017. Units are
#' "million barrels per day".
#'
#'
#' @name gasoline
#' @docType data
#' @format Time series object of class \code{ts}.
#' @source US Energy Information Administration.
#' @keywords datasets
#' @examples
#'
#' autoplot(gasoline, xlab="Year")
#'
NULL

#' Daily closing stock prices of Google Inc
#'
#' Closing stock prices of GOOG from the NASDAQ exchange, for 1000 consecutive
#' trading days between 25 February 2013 and 13 February 2017. Adjusted for
#' splits. \code{goog200} contains the first 200 observations from \code{goog}.
#'
#'
#' @name goog
#' @docType data
#' @format Daily time series of class \code{ts}.
#' @source \url{https://finance.yahoo.com/quote/GOOG/history}
#' @keywords datasets
#' @examples
#'
#' autoplot(goog)
#'
NULL

#' @name goog200
#' @rdname goog
NULL

#' Rice production (Guinea)
#'
#' Total annual rice production (million metric tons) for Guinea. 1970-2011.
#'
#'
#' @name guinearice
#' @docType data
#' @format Annual time series of class \code{ts}.
#' @source World Bank.
#' @keywords datasets
#' @examples
#'
#' autoplot(guinearice)
#'
NULL

#' Monthly corticosteroid drug subsidy in Australia from 1991 to 2008.
#'
#' Monthly government expenditure (millions of dollars) as part of the
#' Pharmaceutical Benefit Scheme for products falling under ATC code H02
#' as recorded by the Australian Health Insurance Commission.
#' July 1991 - June 2008.
#'
#'
#' @name h02
#' @docType data
#' @format Monthly time series of class \code{ts}.
#' @source Medicare Australia
#' @keywords datasets
#' @examples
#'
#' autoplot(h02)
#' ggseasonplot(h02)
#'
NULL

#' Daily pageviews for the Hyndsight blog. 30 April 2014 to 29 April 2015.
#'
#' Hyndsight is Rob Hyndman's personal blog at
#' \url{https://robjhyndman.com/hyndsight/}. This series contains the daily
#' pageviews for one year, beginning 30 April 2014. The frequency is set to 7,
#' to allow the weekly pattern to be modelled.
#'
#'
#' @name hyndsight
#' @docType data
#' @format Time series object of class \code{ts}.
#' @source Rob Hyndman
#' @keywords datasets
#' @examples
#'
#' autoplot(hyndsight, xlab="Weeks")
#'
NULL

#' Insurance quotations and advertising expenditure.
#'
#' Monthly quotations and monthly television advertising expenditure for a US
#' insurance company. January 2002 to April 2005.
#'
#'
#' @name insurance
#' @docType data
#' @format Monthly time series of class \code{ts}.
#' @source Kindly provided by Dave Reilly, Automatic Forecasting Systems.
#' @keywords datasets
#' @examples
#'
#' autoplot(insurance)
#'
NULL

#' Livestock (sheep) in Asia, 1961-2007.
#'
#' Annual sheep livestock numbers in Asia (in million head).
#'
#'
#' @name livestock
#' @docType data
#' @format Annual time series of class \code{ts}.
#' @source United Nations.
#' @keywords datasets
#' @examples
#'
#' autoplot(livestock)
#'
NULL

#' Boston marathon winning times since 1897
#'
#' Winning times (in minutes) for the Boston Marathon Men's Open Division.
#' 1897-2016.
#'
#'
#' @name marathon
#' @docType data
#' @format Annual time series of class \code{ts}.
#' @source Boston Athletic Association.
#' \url{https://www.baa.org/races/boston-marathon/results/champions}
#' @keywords datasets
#' @examples
#'
#' autoplot(marathon)
#'
NULL

#' Maximum annual temperatures at Moorabbin Airport, Melbourne
#'
#' Maximum annual temperatures (degrees Celsius) for Moorabbin Airport,
#' Melbourne. 1971-2016.
#'
#'
#' @name maxtemp
#' @docType data
#' @format Annual time series of class \code{ts}.
#' @source Australian Bureau of Meteorology.
#' @keywords datasets
#' @examples
#'
#' autoplot(maxtemp)
#'
NULL

#' Total weekly air passenger numbers on Ansett airline flights between
#' Melbourne and Sydney, 1987--1992.
#'
#' Air traffic numbers are in thousands, and divided into first class, business
#' class and economy class. There was a major pilots' industrial dispute during
#' the data period resulting in some weeks with zero traffic. There was also at
#' least two changes in the definitions of passenger classes.
#'
#'
#' @name melsyd
#' @docType data
#' @format Multiple time series of class \code{mts}.
#' @source Ansett Airlines (which no longer exists).
#' @keywords datasets
#' @examples
#'
#' autoplot(melsyd, facets=TRUE)
#'
NULL

#' Annual oil production in Saudi Arabia
#'
#' Annual oil production (millions of tonnes), Saudi Arabia, 1965-2013.
#'
#'
#' @name oil
#' @docType data
#' @format Annual time series of class \code{ts}.
#' @source BP.
#' @keywords datasets
#' @examples
#'
#' autoplot(oil)
#'
NULL

#' Quarterly Australian Portland Cement production
#'
#' Total quarterly production of Portland cement in Australia (in millions of
#' tonnes) from 1956:Q1 to 2014:Q1.
#'
#'
#' @name qcement
#' @docType data
#' @format Quarterly time series of class \code{ts}.
#' @source Australian Bureau of Statistics. Cat. 8301.0.55.001.
#' @keywords datasets
#' @examples
#'
#' autoplot(qcement)
#'
NULL

#' Quarterly Australian Electricity production
#'
#' Total quarterly electricity production in Australia (in billion kWh) from
#' 1956:Q1 to 2010:Q2.
#'
#'
#' @name qauselec
#' @docType data
#' @format Quarterly time series of class \code{ts}.
#' @source Australian Bureau of Statistics. Cat. 8301.0.55.001.
#' @keywords datasets
#' @examples
#'
#' autoplot(qauselec)
#'
NULL

#' Quarterly Australian Gas Production
#'
#' Total quarterly gas production in Australia (in petajoules) from 1956:Q1 to
#' 2010:Q2.
#'
#'
#' @name qgas
#' @docType data
#' @format Quarterly time series of class \code{ts}.
#' @source Australian Bureau of Statistics. Cat. 8301.0.55.001.
#' @keywords datasets
#' @examples
#'
#' autoplot(qgas)
#'
NULL

#' Annual average sunspot area (1875-2015)
#'
#' Annual averages of the daily sunspot areas (in units of millionths of a
#' hemisphere) for the full sun. Sunspots are magnetic regions that appear as
#' dark spots on the surface of the sun. The Royal Greenwich Observatory
#' compiled daily sunspot observations from May 1874 to 1976. Later data are
#' from the US Air Force and the US National Oceanic and Atmospheric
#' Administration. The data have been calibrated to be consistent across the
#' whole history of observations.
#'
#'
#' @name sunspotarea
#' @docType data
#' @format Annual time series of class \code{ts}.
#' @source NASA
#' @keywords datasets
#' @examples
#'
#' autoplot(sunspotarea)
#'
NULL

#' Growth rates of personal consumption and personal income in the USA.
#'
#' Percentage changes in quarterly personal consumption expenditure, personal
#' disposable income, production, savings and the unemployment rate for the US,
#' 1960 to 2016.
#'
#'
#' @name uschange
#' @aliases usconsumption uschange
#' @docType data
#' @format Time series object of class \code{ts}.
#' @source Federal Reserve Bank of St Louis.
#' @keywords datasets
#' @examples
#'
#' autoplot(uschange, facet=TRUE)
#'
NULL

#' Electricity monthly total net generation. January 1973 - June 2013.
#'
#' Electricity net generation measured in billions of kilowatt hours (kWh).
#'
#'
#' @name usmelec
#' @docType data
#' @format Time series object of class \code{ts}.
#' @source US Energy Information Administration.
#' @keywords datasets
#' @examples
#'
#' autoplot(usmelec)
#'
NULL

#' Quarterly visitor nights for various regions of Australia.
#'
#' Total quarterly visitor nights (in millions) from 1998-2016 for twenty
#' regions of Australia within six states. The states are:
#' New South Wales, Queensland, South Australia, Victoria, Western Australia,
#' and Other.
#'
#' @name visnights
#' @docType data
#' @format Time series object of class \code{mts}.
#' @source Tourism Research Australia.
#' @keywords datasets
#' @examples
#'
#' autoplot(visnights)
#'
NULL

#' Annual female murder rate (per 100,000 standard population) in the USA.
#' 1950-2004.
#'
#' Total Murdered women, per 100 000 standard population.
#'
#'
#' @name wmurders
#' @docType data
#' @format Annual time series of class \code{ts}.
#' @source Gapminder Foundation.
#' @keywords datasets
#' @examples
#'
#' autoplot(wmurders)
#'
NULL

#' Winning times in Olympic men's 400m track final. 1896-2016.
#'
#' Times in seconds for the gold-medal winner of the men's 400m track final
#' at each Olympics since 1896. Missing values occur in 1916, 1940 and 1944
#' due to the World Wars.
#'
#' @name mens400
#' @docType data
#' @format time series of class \code{ts} with frequency 1/4.
#' @keywords datasets
#' @examples
#'
#' autoplot(mens400)
#'
NULL

#' prison
#'
#' @name prison
#' @docType data
#' @format Quarterly time series of prisoner numbers in Australia from 2005 to
#' 2016, split by sex, state and legal status. \code{prisonLF} is a long-form
#' version of the data of class \code{data.frame}, while \code{prison} is in
#' wide form and of class \code{mts}.
#' @keywords datasets
#' @examples
#'
#' autoplot(prison)
#' head(prisonLF)
#'
NULL

#' @name prisonLF
#' @rdname prison
#'
NULL
