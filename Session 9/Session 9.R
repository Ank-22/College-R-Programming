library(readr)
library(ggplot2)
library(dplyr)

dataset_1 = read.csv("Session 9/cars04.csv" , stringsAsFactors=TRUE)
#Last Session
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