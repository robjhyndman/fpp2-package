# fpp2

## Overview

The R package *fpp2* loads data required for the examples and exercises
used in the book [*Forecasting: Principles and Practice* (2nd
edition)](https://otexts.com/fpp2/) by Rob J Hyndman and George
Athanasopoulos. It also loads several packages needed to do the analysis
described in the book.

## Installation

You can install the **stable** version from
[CRAN](https://cran.r-project.org/package=fpp2).

``` r
install.packages('fpp2', dependencies = TRUE)
```

You can install the **development** version from
[Github](https://github.com/robjhyndman/fpp2-package)

``` r
# install.packages("remotes")
remotes::install_github("robjhyndman/fpp2-package")
```

## Usage

[`library(fpp2)`](https://pkg.robjhyndman.com/fpp2-package/) will load
the following packages:

- [forecast](https://pkg.robjhyndman.com/forecast/), for forecasting
  methods and some data sets.
- [ggplot2](https://ggplot2.tidyverse.org), for data visualisation.
- [fma](https://pkg.robjhyndman.com/fma/), for data taken from the book
  “Forecasting: methods and applications” by Makridakis, Wheelwright and
  Hyndman (1998).
- [expsmooth](https://pkg.robjhyndman.com/expsmooth/), for data taken
  from the book “Forecasting with Exponential Smoothing” by Hyndman,
  Koehler, Ord and Snyder (2008).

You also get a condensed summary of conflicts with other packages you
have loaded:

``` r
library(fpp2)
#> Registered S3 method overwritten by 'quantmod':
#>   method            from
#>   as.zoo.data.frame zoo
#> ── Attaching packages ────────────────────────────────────────────── fpp2 2.5 ──
#> ✔ ggplot2   4.0.1           ✔ fma       2.5        
#> ✔ forecast  8.24            ✔ expsmooth 2.3
#> 
```
