library(tsibble)
library(tidyverse)

#### prisonLF
prisonLF <- read.csv("data-raw/prisonLF1.csv") %>%
  mutate(t = as.Date(date, format = "%Y/%m/%d"),
         count = as.numeric(count)) %>%
  drop_na(count) %>%
  filter(count != 0) %>%
  group_by(state,gender,legal,t) %>%
  select(state,gender,legal,count,t) %>%
  group_by(state,gender,legal,t) %>%
  summarize(count=sum(count)) %>%
  ungroup() %>%
  mutate(legal = recode(legal,
                    Sentenced = "Sentenced",
                    Remamded  = "Remanded"))

devtools::use_data(prisonLF, overwrite=TRUE)

prison <- mutate(prisonLF,
    state = recode(state,
                  NT = "NT ",
                  SA = "SA ",
                  WA = "WA "),
    gender = recode(gender,
                  Male   = "M",
                  Female = "F"),
    legal = recode(legal,
                  Sentenced = "Sentenced",
                  Remanded  = "Remanded ")) %>%
  mutate(yearqtr = yearquarter(t)) %>%
  mutate(id = paste0(state, gender, legal)) %>%
  as_tsibble(key = tsibble::id(id), index = yearqtr) %>%
  select(yearqtr,count,id) %>%
  as.ts(value=count)

devtools::use_data(prison, overwrite=TRUE)

