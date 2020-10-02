library(readr)
library(ggplot2)
library(dplyr)
library(gapminder)

glimpse(gapminder)

View(gapminder)

#See the data dictionary

?gapminder

#Find the mean and IQR for entire population

str(gapminder$pop)

gap2007 %>%
  summarise(mean(pop), IQR(pop), median(pop))

#Density plot for population

ggplot(gap2007, aes(x= pop)) +
  geom_density()

#or

gap2007 %>% ggplot(aes(x= pop)) +
  geom_density()

"
Numbers are too large, so we use log
Mutate a new column called log_pop that is the natural log of the population
and save it back into gap2007.

"

gap2007 = gap2007 %>%
  mutate(pop_log = log(pop))

gap2007

names(gap2007)

#Create a density plot of the new variable

gap2007 %>% ggplot(aes(x= pop_log)) +
  geom_density()

"Create a new subset gap_asia
- and add a new logical variable is_outlier, with TRUE for lifeExp less than 50"

gap_asia = gap2007 %>%
  filter(continent == 'Asia') %>%
  mutate(is_outlier = lifeExp < 50)

names(gap_asia)

head(gap_asia)

#Plot boxplot for lifeExp

gap_asia %>%
  ggplot(aes(x = 1, y = lifeExp)) +
  geom_boxplot()

#Now plot the boxplot for lifeExp without outliers

gap_asia %>%
  filter(!is_outlier) %>%
  ggplot(aes(x = 1, y = lifeExp)) +
  geom_boxplot()

gap_asia %>%
  filter(!is_outlier) %>%
  summarise(median(lifeExp), sd(lifeExp), IQR(lifeExp), n())


# For each continent find sd, median, IQR and count for lifeExp

gap2007 %>%
  group_by(continent) %>%
  summarise(median(lifeExp), sd(lifeExp), IQR(lifeExp), n())

#Compute sd for lifeExp in Americas

gap2007 %>%
  filter(continent == 'Americas') %>%
  summarise(median(lifeExp), sd(lifeExp), IQR(lifeExp), n())

#Compute IQR for pop

gap2007 %>%
  summarise(median(pop), IQR(pop))

#---------------life dataset--------------------------#

life = read.csv("C:/Users/HP/Downloads/life_exp_raw.csv")

glimpse(life)

View(life)

str(life)

names(life)

str(life$State)

unique(life$State)

#Create a new variable west_coast

"Set the value as TRUE for states California, Oregon, Washington"

life = life %>%
  mutate(west_coast = State %in%
           c("California", "Oregon", "Washington"))

names(life)

head(life$west_coast)

View(life)

str(life$west_coast)

unique(life$west_coast)