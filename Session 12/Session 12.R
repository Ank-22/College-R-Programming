install.packages("gapminder")
library(gapminder)
library(dplyr)
library(ggplot2)

glimpse(gapminder)

View(gapminder)
"
library(ggplot2)
> glimpse(gapminder)
Rows: 1,704
Columns: 6
$ country   <fct> Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afgha...        
$ continent <fct> Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asi...        
$ year      <int> 1952, 1957, 1962, 1967, 1972, 1977, 1982, 1987, 1992, 199...        
$ lifeExp   <dbl> 28.801, 30.332, 31.997, 34.020, 36.088, 38.438, 39.854, 4...        
$ pop       <int> 8425333, 9240934, 10267083, 11537966, 13079460, 14880372,...        
$ gdpPercap <dbl> 779.4453, 820.8530, 853.1007, 836.1971, 739.9811, 786.113...
"
