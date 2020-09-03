"
Create a new file: EDA with dplyr.R

Save the cominc.csv and copy paste

change the path \ with /
"

# Exploratory Data Analysis with dplyr
# Visualizations using ggplot

# Install the below libaries only once the frist time
# Load the libaries each time for a new R session 

install.packages("readr")
install.packages("ggplot2")
install.packages("dplyr")

library(readr)
library(ggplot2)
library(dplyr)

# Now read in the data and explore the dataset


comics =read.csv("Session 8/comics.csv" , stringsAsFactors=TRUE)

str(comics)

glimpse(comics)
'
######### Without stringsAsFactors=TRUE
Rows: 23,272
Columns: 11
$ name         <chr> "Spider-Man (Peter Parker)", "Captain America (Steven ...
$ id           <chr> "Secret", "Public", "Public", "Public", "No Dual", "Pu...
$ align        <chr> "Good", "Good", "Neutral", "Good", "Good", "Good", "Go...
$ eye          <chr> "Hazel Eyes", "Blue Eyes", "Blue Eyes", "Blue Eyes", "...
$ hair         <chr> "Brown Hair", "White Hair", "Black Hair", "Black Hair"...
$ gender       <chr> "Male", "Male", "Male", "Male", "Male", "Male", "Male"...
$ gsm          <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA...
$ alive        <chr> "Living Characters", "Living Characters", "Living Char...
$ appearances  <int> 4043, 3360, 3061, 2961, 2258, 2255, 2072, 2017, 1955, ...
$ first_appear <chr> "Aug-62", "Mar-41", "Oct-74", "Mar-63", "Nov-50", "Nov...
$ publisher    <chr> "marvel", "marvel", "marvel", "marvel", "marvel", "mar...
'

'
########## With stringsAsFactor=TRUE
Rows: 23,272
Columns: 11
$ name         <fct> Spider-Man (Peter Parker), Captain America (Steven Rog...
$ id           <fct> Secret, Public, Public, Public, No Dual, Public, Publi...
$ align        <fct> Good, Good, Neutral, Good, Good, Good, Good, Good, Neu...
$ eye          <fct> Hazel Eyes, Blue Eyes, Blue Eyes, Blue Eyes, Blue Eyes...
$ hair         <fct> Brown Hair, White Hair, Black Hair, Black Hair, Blond ...
$ gender       <fct> Male, Male, Male, Male, Male, Male, Male, Male, Male, ...
$ gsm          <fct> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA...
$ alive        <fct> Living Characters, Living Characters, Living Character...
$ appearances  <int> 4043, 3360, 3061, 2961, 2258, 2255, 2072, 2017, 1955, ...
$ first_appear <fct> Aug-62, Mar-41, Oct-74, Mar-63, Nov-50, Nov-61, Nov-61...
$ publisher    <fct> marvel, marvel, marvel, marvel, marvel, marvel, marvel...
'
dim(comics)
View(head(comics,100))
str(comics$align)
str(comics$publisher)
unique(comics$publisher)
unique(comics$align)

summary(comics$align)

table(comics$align)

"
Notice that NAs are not considered as a value and Reformed criminals are very very few compared to otheres align value
"

# check the levels of the factor align
levels(comics$align)

"
Here also we notice that NAs are not considered as a level
"

# similarly explore the factor gender 
str(comics$gender)

unique(comics$gender)

summary(comics$gender)

table(comics$gender)

levels(comics$gender)


#-------------Contingency Table-------------#

"
Frequency tabel of two facto variables is called contingency table
"
table(comics$align,comics$gender)
View(table(comics$align,comics$gender))

"
                   Female Male Other
  Bad                  1573 7561    32
  Good                 2490 4809    17
  Neutral               836 1799    17
  Reformed Criminals      1    2     0
"

"
We observe that Reformed Criminals is neglible for the analysis compared 
to other alignments,so we can remove them RC and drop it as a level
"


#-----------------------Dropping Levels-----------------------# 
"
Since RC are negligible we can remove them from our analyisis
Removing a level a factore variable is called dropping a level

To drop a level you have to frist make the count zero for that factor value
"

# filter out the roes with align not equal to RC

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

"
As we can see from both the freq table of aling and contingency table that
Reformed Criminals is no longer a factor level
"

#----------------------Visualizations using ggplot----------------------#
"
Now, lets start with graphs
for now we'll just create graphs and try to understand them later that is which graph to when
"

# create a side by side bar chart for align
ggplot(comics,aes(x=align))+geom_bar()
ggplot(comics,aes(x=align, col="red"))+geom_bar()
ggplot(comics,aes(x=align, fill="red"))+geom_bar()

ggplot(comics,aes(x=align, fill=gender))+geom_bar()
