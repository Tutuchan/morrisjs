[![Build Status](https://travis-ci.org/Tutuchan/morrisjs.svg?branch=master)](https://travis-ci.org/Tutuchan/morrisjs)

## morris.js for R - 0.2.2

This package is an interface to the [morris.js](http://morrisjs.github.io/morris.js/index.html) charting library.

## Installation

```R 
devtools::install_github("tutuchan/morrisjs")
```

## Examples

### Line chart

```R 
morrisjs(mdeaths) %>% 
  mjsLine
```

### Bar chart

```R 
morrisjs(mdeaths) %>% 
  mjsBar
```

### Area chart

```R 
morrisjs(mdeaths) %>% 
  mjsArea
```

### Donut chart

```R 
morrisjs(list(c("Label 1", "Label 2"), c(10, 20))) %>% 
  mjsDonut
```

## Inputs

For lines, areas and bars, inputs can be either `ts`, `xts` or `mts`:

```R 
morrisjs(mdeaths) %>% 
  mjsLine
  
morrisjs(ts.union(fdeaths, mdeaths)) %>% 
  mjsLine
```

They can also be `data.frame`s or `tbl_df`s with the first column being of class `Date`:

```R 
df <- dplyr::data_frame(date = as.Date(c("2011-01-01", "2011-02-01", "2011-03-01")), 
                        series1 = rnorm(3), series2 = rnorm(3))
morrisjs(df) %>% 
  mjsLine
```

For donuts, inputs should be a list of two elements: a vector of characters and a vector of numerics.

## Options 

All options are listed on the [morris.js github page](http://morrisjs.github.io/morris.js/index.html) and can be passed as parameters to the `mjs` functions.