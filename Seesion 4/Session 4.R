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

str(gender)

input_df <- data.frame(height,weight,gender)

input_df

head(input_df)
names(input_df)
tail(input_df)

str(input_df)

typeof(input_df)

is.factor(input_df$gender)

input_df$gender

##  ------ generating factor levels using gl ------ #

"
When we have levles and we wanr ro create a factoe vectoe by repeating those levels
those levle va;ues we use the functions gl(n,1,labes)
n- number of levels
l- how many level should be repeated
"

v <- gl(3,4, labels =c("Tampa","Settle","Boston"))
v

# ----------- DF ---------------- #

"
A data fram is a table or a two dimensional data strucute for colums and rows
-- each colimn contains values of on variable
-- each row is an obersvation containing one value of each variable

Characteristice of data frame
- column non empty
- rows are uniqne 
- data stoed in a data frame.
- lenght of all colum is same 
"

emp.data <- data.frame(
    emp_id = c(1:5),
    emp_name = c("Rick","Ank","Sam","Tmartn","Dick"),
    salary =c(623.3,515.2,611.0,729.0,843.25),
    salary_data=as.Date(c("2012-01-01","2012-09-23","2014-11-25","2014-05-11","2015-03-27"))

)

emp.data

str(emp.data)
names(emp.data)
head(emp.data)
class(emp.data)
typeof(emp.data)

View(emp.data)

summary(emp.data)

# ------------- Extracting data from data frame ------------- #

# Extract specific columns using $

# Extract emp_name and emp_salary into another data frame


Emp_Sal <- data.frame(emp.data$emp_name, emp.data$salary)
Emp_Sal
str(Emp_Sal)

# Range
obs1_2 <-emp.data[1:2,]
obs1_2
# Selecting by passing vector
obs <- emp.data[c(1,3),]
obs

obs2 <- emp.data[c(3,5),c(2,4)]
obs2


# ----- Modifying data frame

# --- Expand a data frame by adding colummns and rows

emp.data$dept <- c("IT","DevOps","DevOps","IT","HR")

emp.data