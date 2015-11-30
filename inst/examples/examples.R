library(dplyr)
library(morrisjs)

df <- data_frame(date = as.Date(c("2011-01-01", "2011-02-01", "2011-03-01")), series1 = rnorm(3), series2 = rnorm(3))

# Bar
morrisjs(df) %>% 
  mjsBar

# Line and options
morrisjs(ts.union(fdeaths, mdeaths)) %>% 
  mjsLine(options = list(postUnits = " ppl",
                         goals = list(1000),
                         lineWidth = 2,
                         lineColors = c(RColorBrewer::brewer.pal(12, "Paired")[c(2,4)])))


# Area
morrisjs(mdeaths) %>% 
  mjsArea

# Donut
morrisjs(list(c("Red", "Green", "Blue"), c(10, 20, 30))) %>% 
  mjsDonut(options = list(colors = RColorBrewer::brewer.pal(12, "Paired")[c(6,4,2)]))