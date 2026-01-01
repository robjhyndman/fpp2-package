# Conflicts between fpp2 packages and other packages

This function lists all the conflicts between packages in the fpp2
collection and other packages that you have loaded.

## Usage

``` r
fpp2_conflicts()
```

## Value

A list object of class `fpp2_conflicts`.

## Details

Some conflicts are deliberately ignored: `intersect`, `union`,
`setequal`, and `setdiff` from dplyr; and `intersect`, `union`,
`setdiff`, and `as.difftime` from lubridate. These functions make the
base equivalents generic, so shouldn't negatively affect any existing
code.

## Examples

``` r
fpp2_conflicts()
#> 
```
