
##################EXECUTE PREV COMANDS



install.packages("readr")
install.packages("ggplot2")
library(readr)
library(ggplot2)
library(dplyr)

comics=read.csv("path.csv",stringsAsFactors = TRUE)

str(comics)

dim(comics)

######################################## TODAY's SESSION

ggplot(common_cyl,aes(x=city_mpg))+
  geom_density()

ggplot(common_cyl,aes(x=city_mpg,fill=as.factor(ncyl)))+
  geom_Density()


ggplot(common_cyl,aes(x=city_mpg,fill=as.factor(ncyl)))+
  geom_Density(aplha=0.3)

str(cars$width)

head(cars$width)

head(cars)

# boxplot distribution


cars %>% ggplot(aes(x=1,y=width))+
  geom_boxplot()

# density plot

cars %>% ggplot(aes(x=1,y=width))+
  geom_density()

# Using facet_grid for mutlivariate distribution

names(cars)

?cars

str(cars$msrp)
str(cars$pickup)
str(cars$rear_wheel)


ggplot(cars,aes(x=msrp))+
  geom_density()+
  facet_grid(pickup~rear_wheel)


# Readable format
ggplot(cars,aes(x=msrp))+
  geom_density()+
  facet_grid(pickup~rear_wheel,labeller=label_both)


ggplot(cars,aes(x=msrp))+
  geom_density()+
  facet_grid(pickup~rear_wheel,labeller=label_both)+
  ggtitle("MSRP for cars wrt rear wheel and pickup or not")


table(cars$rear_wheel,cars$pickup)

table(rear_Wheel=cars$rear_wheel,pickup=cars$pickup)


common_cyl%>% ggplot(aes(x=hwy_mpg))+
  geom_histogram()+
  facet_grid(ncyl~suv,labeller=label_both)+
  ggtitle("Mileage by suv and ncyl")


install.packages("gapminder")
library(gapminder)
?gapminder
glimpse(gapminder)
View(gapminder)


str(gapminder$year)

length((unique(gapmind$year)))

gap2007=gapminder%>%
  filter(year==2007)

glimpse(gap2007)

dim(gap2007)
"

R version 4.0.2 (2020-06-22) -- "Taking Off Again"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.    
You are welcome to redistribute it under certain conditions. 
Type 'license()' or 'licence()' for distribution details.    

  Natural language support but running in an English locale 

R is a collaborative project with many contributors.        
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or 
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> library(readr)
> library(ggplot2)
> library(dplyr)

Attaching package: 'dplyr'

The following objects are masked from 'package:stats':

    filter, lag

The following objects are masked from 'package:base':

    intersect, setdiff, setequal, union

> install.packages("gapminder")
--- Please select a CRAN mirror for use in this session ---
trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.0/gapminder_0.3.0.zip'
Content type 'application/zip' length 2031887 bytes (1.9 MB)
downloaded 1.9 MB

package 'gapminder' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\ankit\AppData\Local\Temp\Rtmp2bHW6K\downloaded_packages
> library(gapminder)
> ?gapminder
starting httpd help server ... done
> glimpse(gapminder)
Rows: 1,704
Columns: 6
$ country   <fct> Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afgha...
$ continent <fct> Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asi...        
$ year      <int> 1952, 1957, 1962, 1967, 1972, 1977, 1982, 1987, 1992, 199...        
$ lifeExp   <dbl> 28.801, 30.332, 31.997, 34.020, 36.088, 38.438, 39.854, 4...        
$ pop       <int> 8425333, 9240934, 10267083, 11537966, 13079460, 14880372,...        
$ gdpPercap <dbl> 779.4453, 820.8530, 853.1007, 836.1971, 739.9811, 786.113...        
> View(gapminder)
> str(gapminder$year)
 int [1:1704] 1952 1957 1962 1967 1972 1977 1982 1987 1992 1997 ...
>
> length((unique(gapmind$year)))
Error in unique(gapmind$year) : object 'gapmind' not found
>
> gap2007=gapminder%>%
+   filter(year==2007)
> 
> glimpse(gap2007)
Rows: 142
Columns: 6
$ country   <fct> Afghanistan, Albania, Algeria, Angola, Argentina, Austral...        
$ continent <fct> Asia, Europe, Africa, Africa, Americas, Oceania, Europe, ...
$ year      <int> 2007, 2007, 2007, 2007, 2007, 2007, 2007, 2007, 2007, 200...        
$ lifeExp   <dbl> 43.828, 76.423, 72.301, 42.731, 75.320, 81.235, 79.829, 7...        
$ pop       <int> 31889923, 3600523, 33333216, 12420476, 40301927, 20434176...        
$ gdpPercap <dbl> 974.5803, 5937.0295, 6223.3675, 4797.2313, 12779.3796, 34...        
>
> dim(gap2007)
[1] 142   6
>
>
> gap2007 %>%
+   gourpby(continent) %>%
+   summarise(mean(lifeExp),median(lifeExp))
Error in gourpby(., continent) : could not find function "gourpby"
> # Now crosscheck the trend you see with side by side boxplot
> # Hint: boxplot for unmerical variable lifeexp, for each continent
>
> gap2007 %>%
+     ggplot(aes(x=continent,y = lifeExp, fill= continent))+
+     geom_boxplot()
> gap2007 %>%
+     group_by(continent) %>%
+     summarise(mean(lifeExp),sd(lifeExp),IQR(lifeExp))
`summarise()` ungrouping output (override with `.groups` argument)
# A tibble: 5 x 4
"

gap2007 %>% 
  gourpby(continent) %>%
  summarise(mean(lifeExp),median(lifeExp))
# Now crosscheck the trend you see with side by side boxplot
# Hint: boxplot for unmerical variable lifeexp, for each continent

gap2007 %>%
    ggplot(aes(x=continent,y = lifeExp, fill= continent))+
    geom_boxplot()
"
Mean Median are the measures of central tendanvy
Lets look at measures of spred - standard deviation and IOR 

- So again group by continemtn and use SD and IQR function in summarise
"
gap2007 %>%
    group_by(continent) %>%
    summarise(mean(lifeExp),sd(lifeExp),IQR(lifeExp))

"
 continent `mean(lifeExp)` `sd(lifeExp)` `IQR(lifeExp)`
  <fct>               <dbl>         <dbl>          <dbl>
1 Africa               54.8         9.63          11.6
2 Americas             73.6         4.44           4.63
3 Asia                 70.7         7.96          10.2  
4 Europe               77.6         2.98           4.78
5 Oceania              80.7         0.729          0.516
"

gap2007 %>%
    group_by(continent) %>%
    summarise(mean(lifeExp),sd(lifeExp),IQR(lifeExp),n())
"
A tibble: 5 x 5
  continent `mean(lifeExp)` `sd(lifeExp)` `IQR(lifeExp)` `n()`
  <fct>               <dbl>         <dbl>          <dbl> <int>
1 Africa               54.8         9.63          11.6      52
2 Americas             73.6         4.44           4.63     25
3 Asia                 70.7         7.96          10.2      33
4 Europe               77.6         2.98           4.78     30
5 Oceania              80.7         0.729          0.516     2
"
"
So here are the aggregate function we have used so far
- mean median (measure of central tnedencies)
- sd IOR(Measure of spread or variabilty)
-n() count
"

"
Just as we used boxplot to see the central distribution
- use density plot to see the spread or variability of the distributuion of life expctance by continet
"
gap2007 %>%
    ggplot(aes( x= lifeExp))+
    geom_density()

gap2007 %>%
    ggplot(aes(fill=continent, x= lifeExp))+
    geom_density()


"
life expectancy is highest of oceanic contries
"

# For clarity add transparency
gap2007 %>%
    ggplot(aes(fill=continent, x= lifeExp))+
    geom_density(alpha =0.3)

"
Insted of using fill 
- let's split the graph wrt to continent
- using facet_wrap and facet_grid
- what is the difference between facet_wrao and facet_gird
"    
gap2007 %>%
    ggplot(aes( x= lifeExp))+
    geom_density()+facet_wrap(~continent)

gap2007 %>%
    ggplot(aes( x= lifeExp))+
    geom_density()+facet_grid(~continent)

"
Find the mean and sd life expectancy for americans
"
gap2007 %>%
    filter(continent=="Americas") %>%
    summarise(mean(lifeExp),sd(lifeExp),IQR(lifeExp),n())
"
A tibble: 1 x 4
  `mean(lifeExp)` `sd(lifeExp)` `IQR(lifeExp)` `n()`
            <dbl>         <dbl>          <dbl> <int>
1            73.6          4.44           4.63    25
"