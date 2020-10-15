# TM-stringr.R

install.packages("babynames")

library(babynames)
library(dplyr)
glimpse(babynames)

names(babynames)

head(babynames)

View(babynames)

dim(babynames)

str(babynames$year)

length(unique(babynames$year))


b1=babynames%>%
  filter(year==2014)
View(b1)
dim(b1)
names(b1)

boys=b1%>%
    filter(sex=="M")
gorls=b1%>%
    filter(sex=="F")

boy_names=boys$name
View(boy_names)

girls_names=gorls$name
glimpse(girls_names)

install.packages("stringr")
library(stringr)


boynames_length=str_length(boy_names)
boynames_length

girlnames_length<-str_length(girls_names)
girlnames_length

str(girlnames_length)


mean(girlnames_length)-mean(boynames_length)

?str_sub


str_sub(c("Bruce","Wayne"),1,4)

str_sub(c("Bruce","Wayne"),-4,-1)
