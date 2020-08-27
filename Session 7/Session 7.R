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

dfc <- filter(hflights,Cancelled==1 & !is.na(DepDelay))%>%
        select(Cancelled,DepDelay,CancellationCode)%>%
        arrange(DepDelay)

head(dfc)

tail(dfc)

# To add multiple conditions you can use, Also instead of &

dfc <- hflights %>%
        filter(hflights,Cancelled==1 , !is.na(DepDelay))%>%
        select(Cancelled,DepDelay,CancellationCode)%>%
        arrange(DepDelay)

head(dfc) 
names(dfc)

 # Now Arrange dfc rows by Cancellation code
head(dfc$CancellationCode)

dfc %>%
    arrange(CancellationCode)%>%
    select(cancelled,DepDelay,CancellationCode)
    View()


# Arrange dfc by UniqueCarrieas And Depdelay

dfc %>%
    arrange(UniqueCarrier)%>%
    select(Cancelled,DepDelay,UniqueCarrier) %>%
    View()


#--------------------- Summarise dplyr command
"
Like mutate function summarise also creates a new variable, but a new dataset.

To apply aggregate functions like min, max etc on a group - it returns a single value for each group
or for entire dataset

Aggregate function in dplyr
min(x) - minimum value of vector x.
max(x) - maximum value of vector x.
mean(x) - mean value of vector x.
median(x) - median value of vector x.
quantile(x, p) - pth quantile of vector x.
sd(x) - standard deviation of vector x.
var(x) - variance of vector x.
IQR(x) - Inter Quartile Range (IQR) of vector x.
diff(range(x)) - total range of vector x
"

# Get the Shortest distance flown and the lomgest distance flown in hflights dataset

names(hflights)

"Distance:distance of flight, in miles"