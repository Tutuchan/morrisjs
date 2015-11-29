library(dplyr)
library(morrisjs)

df <- data_frame(date = as.Date(c("2011-01-01", "2011-02-01", "2011-03-01")), series1 = rnorm(3), series2 = rnorm(3))
morrisjs(df) %>% 
  mjsLine(options = list(postUnits = "%",
                         goals = list(0.5, 0.2),
                         lineWidth = 3,
                         lineColors = c(RColorBrewer::brewer.pal(12, "Paired")[c(2,4)])))

morrisjs(ts.union(fdeaths, mdeaths)) %>% 
  mjsLine

morrisjs(mdeaths) %>% 
  mjsLine