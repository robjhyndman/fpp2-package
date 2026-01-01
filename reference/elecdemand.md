# Half-hourly and daily electricity demand for Victoria, Australia, in 2014

`elecdemand` is a half-hourly time series matrix with three columns:

|              |                                                                                      |
|--------------|--------------------------------------------------------------------------------------|
| Demand:      | Total electricity demand in GW for Victoria, Australia, every half-hour during 2014. |
| WorkDay:     | taking value 1 on work days, and 0 otherwise.                                        |
| Temperature: | half-hourly temperatures for Melbourne (BOM site 086071).                            |

`elecdaily` is a daily time series matrix with three columns:

|              |                                                                                |
|--------------|--------------------------------------------------------------------------------|
| Demand:      | Total electricity demand in GW for Victoria, Australia, every day during 2014. |
| WorkDay:     | taking value 1 on work days, and 0 otherwise.                                  |
| Temperature: | maximum daily temperatures for Melbourne (BOM site 086071).                    |

## Format

Multiple time series of class `mts`.

## Source

Australian Energy Market Operator, and the Australian Bureau of
Meteorology.

## Details

This data is for operational demand, which is the demand met by local
scheduled generating units, semi-scheduled generating units, and
non-scheduled intermittent generating units of aggregate capacity larger
than 30 MW, and by generation imports to the region. The operational
demand excludes the demand met by non-scheduled non-intermittent
generating units, non-scheduled intermittent generating units of
aggregate capacity smaller than 30 MW, exempt generation (e.g. rooftop
solar, gas tri-generation, very small wind farms, etc), and demand of
local scheduled loads. It also excludes some very large industrial users
(such as mines or smelters).

## Examples

``` r
summary(elecdemand)
#>      Demand         WorkDay        Temperature   
#>  Min.   :2.858   Min.   :0.0000   Min.   : 1.50  
#>  1st Qu.:3.927   1st Qu.:0.0000   1st Qu.:12.60  
#>  Median :4.596   Median :1.0000   Median :15.80  
#>  Mean   :4.610   Mean   :0.6877   Mean   :16.51  
#>  3rd Qu.:5.159   3rd Qu.:1.0000   3rd Qu.:19.40  
#>  Max.   :9.345   Max.   :1.0000   Max.   :43.20  
summary(elecdaily)
#>      Demand         WorkDay        Temperature   
#>  Min.   :166.7   Min.   :0.0000   Min.   : 9.80  
#>  1st Qu.:205.4   1st Qu.:0.0000   1st Qu.:16.60  
#>  Median :221.0   Median :1.0000   Median :20.30  
#>  Mean   :221.3   Mean   :0.6877   Mean   :21.26  
#>  3rd Qu.:236.7   3rd Qu.:1.0000   3rd Qu.:24.30  
#>  Max.   :347.6   Max.   :1.0000   Max.   :43.20  
```
