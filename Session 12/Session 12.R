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
comics=read.csv("B:/Study/Academics/MIT College/4th Year/Sem 7/R programing/R-Prpgramming/Session 8/comics.csv",stringsAsFactors = TRUE)

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


str(gapminder$year)

length((unique(gapmind$year)))

gap2007=gapminder%>%
  filter(year==2007)

glimpse(gap2007)

dim(gap2007)


######################### New Session #################

glimpse(gapminder)
View(gapminder)