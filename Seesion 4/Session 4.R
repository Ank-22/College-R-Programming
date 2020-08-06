## --------- SESSION 4 ---------##

## Factor
# Create a vector as input

data <- c("East","West","East","North","North","East","West","West","East","North")
data

is.factor(data)
str(data)

unique(data)
## Apply the factor function

factor_data=factor(data)
factor_data

factor_2 <- as.factor(data)
factor_2

is.factor(factor_data)
is.factor(factor_2)


levels(factor_data)


" 
Changing the order of levels 
The order of the levels in function again with new order of the level
"

# Applying the factoe function with required order of the level

new_order <- factor(data, levels=c("East","West","North"))

new_order

str(new_order)
is.factor(new_order)

levels(new_order)


## ------ Data frame from vector ------ ##

# Create Vectors and store in data frame.

height <- c(132,151,162,139,166,147,122)
str(height)
typeof(height)

weight <- c(48,49,66,53,67,52,40)

gender <-c("male","male","female","female","male","female","male")

