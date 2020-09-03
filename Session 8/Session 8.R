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


comics =read.csv("Session 8/comics.csv")

