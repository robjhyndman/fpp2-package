library(tsibble)
library(tidyverse)

#### prisonLF
prisonLF <- read.csv("data-raw/prisonLF1.csv")
prisonLF$t <- as.Date(prisonLF$date, format = "%Y/%m/%d")
prisonLF$count <- as.numeric(prisonLF$count)
prisonLF$quarter <- as.Date(cut(prisonLF$t, breaks = "quarter"))
prisonLF$year <- as.Date(cut(prisonLF$t, breaks="year"))

# Remove duplicate NA and 0 rows
small <- prisonLF %>%
  drop_na(count) %>%
  filter(count != 0) %>%
  distinct(state, gender, legal, t, .keep_all = TRUE)

# Recode strings to have equal length
small$state <- recode(small$state,
  NT = "NT ",
  SA = "SA ",
  WA = "WA ")
small$gender <- recode(small$gender,
  Male   = "M",
  Female = "F")
small$legal <- recode(small$legal,
  Sentenced = "Sentenced",
  Remamded  = "Remanded ")
#small$indigenous <- recode(small$indigenous,
#  ATSI  = "ATSI ",
#  Other = "Other")

# Construct tsibble
tsbl <- small %>%
  mutate(yearqtr = yearquarter(t)) %>%
  mutate(id = paste0(state, gender, legal)) %>%
  as_tsibble(key = tsibble::id(id), index = yearqtr) %>%
  select(yearqtr,count,id)

prison <- as.ts(tsbl, value = count)
devtools::use_data(prison, overwrite=TRUE)

#### prison
prison <- read.csv("data-raw/prison.csv", strip.white = TRUE, check.names=FALSE)
prison <- ts(prison, start=c(2005,1), end=c(2016,4), frequency=4)
# Need to make data into prison time series matrix to add to fpp2
devtools::use_data(prison, overwrite=TRUE)

