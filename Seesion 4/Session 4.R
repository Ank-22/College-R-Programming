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