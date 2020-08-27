install.packages("dplyr")
install.packages("hflights")

library(dplyr)
library(hflights)

?hflights

dim(hflights)

str(hflights)

View(head(hflighs))

glimpse(hflights)

View(head(hflights))

names(hflights)

str(hflights$UniqueCharacter)

class(carrier.code_names)

str(carrier.code_names)

carrier.code_names["AA"]

hflights$Carrier = carrier.code_names[hflights$UniqueCarrier]

dim(hflights)

View(head(hflights))

str(hflights$CancellationCode)

unique(hflights$CancellationCode)

names(hflights)

dim(hflights)
