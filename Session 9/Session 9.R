library(readr)
library(ggplot2)
library(dplyr)


#Last Session resume 
comics =read.csv("Session 8/comics.csv" , stringsAsFactors=TRUE)
comics=comics%>%
        filter(align !='Reformed Criminals')

dim(comics)
str(comics$align)
levels(comics$align)
table(comics$align)

comics=comics%>%
        filter(align !='Reformed Criminals')%>%
        droplevels()

table(comics$align)

table(comics$align,comics$gender)

ggplot(comics,aes(x=align, fill=gender))+geom_bar(position="dodge")+theme(axis.text.x=element_text(angle=90))

ggplot(comics,aes(x=align, fill = align))+geom_bar()+ facet_wrap(~ gender)

str(comics$id)
levels(comics$id)
table(comics$id)
comics=comics%>%
        filter(id !='Unknown')%>%
        droplevels()
table(comics$id)
ggplot(comics,aes(x=id, fill = id))+geom_bar()+ facet_wrap(~ gender)
ggplot(comics,aes(x=id, fill = id))+geom_bar()+ facet_wrap(~ align)

## NEW data set 

car = read.csv("Session 9/cars04.csv" , stringsAsFactors=TRUE)

glimpse(car)
names(car)
View(head(car))
str(car)
unique(car$name)

"
Dotplot
Most common way to plot numerical data is dotplot
where each case is plotted as a dot on the x-axis
"

str(car$weight)

table(car$weight)

ggplot(car,aes(x=weight))+geom_dotplot(dotsize=0.22)


