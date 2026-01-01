# prison

prison

## Format

Quarterly time series of prisoner numbers in Australia from 2005 to
2016, split by sex, state and legal status. `prisonLF` is a long-form
version of the data of class `data.frame`, while `prison` is in wide
form and of class `mts`.

## Examples

``` r
autoplot(prison)

head(prisonLF)
#> # A tibble: 6 × 5
#>   state gender legal    t          count
#>   <fct> <fct>  <fct>    <date>     <dbl>
#> 1 ACT   Female Remanded 2005-03-01     2
#> 2 ACT   Female Remanded 2005-06-01     4
#> 3 ACT   Female Remanded 2005-09-01     1
#> 4 ACT   Female Remanded 2005-12-01     4
#> 5 ACT   Female Remanded 2006-03-01     4
#> 6 ACT   Female Remanded 2006-06-01     6
```
