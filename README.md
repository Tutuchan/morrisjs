[![Build Status](https://travis-ci.org/Tutuchan/morrisjs.svg?branch=master)](https://travis-ci.org/Tutuchan/morrisjs)

#### morris.js for R

This package is an interface to the [morris.js](http://morrisjs.github.io/morris.js/index.html) charting library.

#### Installation

```R 
devtools::install_github("tutuchan/morrisjs")
```

#### Examples

Creating a line chart or a bar chart is done with these simple calls:

```R 
morrisjs(mdeaths) %>% 
  mjsLine
```

```R 
morrisjs(mdeaths) %>% 
  mjsBar
```

#### Inputs

Inputs can be either `ts`, `xts` or `mts`:

```R 
morrisjs(mdeaths) %>% 
  mjsLine
  
morrisjs(ts.union(fdeaths, mdeaths)) %>% 
  mjsLine
```

They can also be `data.frame`s or `tbl_df`s with the first column being of class `Date`:

```R 
df <- dplyr::data_frame(date = as.Date(c("2011-01-01", "2011-02-01", "2011-03-01")), series1 = rnorm(3), series2 = rnorm(3))
morrisjs(df) %>% 
  mjsLine
```

#### Options 

All options are listed on the [morris.js github page](http://morrisjs.github.io/morris.js/index.html) and can be passed as parameters to the `mjs` functions.