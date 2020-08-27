install.packages("dplyr")
install.packages("hflights")

library(dplyr)
library(hflights)

names(hflights)

#------------ Exercise ------------#

"
1. Create a subset c1 with flights for destination JFK

2. For these flights add a Date column by combining Year Month DayOfMonth yy-mm-day format
and save in dataframe c2
(hint : use paste and sep='-')

3. From c2 select the columns Date DepTime ArrTime TailNum
"

filter(hflights,(TaxiIn+TaxiOut)> AirTime)
?hflights
names(hflights)

hflights %>%
  filter(TaxiIn+TaxiOut > AirTime)

c1=hflights %>%
  filter(Dest=='JFK')
c2 = c1 %>%
  mutate(Date=paste(Year,Month,DayofMonth,sep="-"))
c2$Date=as.Date(c2$Date)
 c2 %>%
   select(Date,DepTime,ArrTime,TailNum)

 
dfc=hflights%>%
  filter(Cancelled==1)
View(dfc)

#selected (c2,Date,DeepTime, ArrTime,TailNUm)

c3= c2%>%   
        select(Data,DeepTime,ArrTime,TailNum)

#------------ Arranging row of data frame in asc or desc order of columns
"
Filter out flights from hflights that were cancelled and arrange by departure delay
and store in data frame dfc
"
#Explore the variable Cancelled
?hflights

#DepDelay
"
ArrDelay, DepDelay: arrival and deparute delays, in minutes
"

str(hflights$DepDelay)
head(hflights$DepDelay)
View(hflights$DepDelay)
summary(hflights$DepDelay)

# We Have a few NA's That Should be removed from analysis

#Cancelled 

str(hflights$Cancelled)
head(hflights$Cancelled)
View(hflights$Cancelled)
summary(hflights$Cancelled)
# filter out the flights from hflights that were cancelled and arrange by departure delay
# And store in data frame dfc


dfc <- filter(hflights,Cancelled==1)%>%
        select(Cancelled,DepDelay)%>%
        arrange(DepDelay)

head(dfc)

tail(dfc)

y=NA

is.na(y)
#[1] TRUE
! is.na(y)
#[1] FALSE
x = 1
is.na(x)
!is.na(x)
#removing the NA's

dfc <- 