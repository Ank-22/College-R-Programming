
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


gap2007 %>% 
  gourpby(continent) %>%
  summarise(mean(lifeExp),median(lifeExp))
# Now crosscheck the trend you see with side by side boxplot
# Hint: boxplot for unmerical variable lifeexp, for each continent

gap2007 %>%
    ggplot(aes(x=continent,y = lifeExp, fill= continent))+
    geom_boxplot()

