#------------ Session 2 - Data Structure ------------#

Name <- c("Ankit","Aizen","Ichigo","Naruto")
Name
# O: [1] "Ankit"  "Aizen"  "Ichigo" "Naruto"


# vector 
# Numeric Vector

a <- c(1, 2, 3, 6, -2, 4)
class(a)
# O :"numeric"
a
# 0 : [1]  1  2  3  6 -2  4

# Number Vector

X <-c(1,2,3)
# O :
typeof(X)
# O :[1] "double"
class(X)
# O :[1] "numeric"
str(X)
# O :num [1:3] 1 2 3

# Integer Vector

x1 <-c(1L,2L,3L)
typeof(x1)
# O :[1] "integer"
class(x1)
# O :[1] "integer"
length(x1)
# O :[1] 3
str(x1)
# O :int [1:3] 1 2 3

# Logical Vector

y <- c(TRUE,FALSE,TRUE,FALSE,TRUE)
typeof(y)
# o:[1] "logical"
class(y)
# o:[1] "logical"
length(y)
# o:[1] "logical"
str(y)
# o:logi [1:5] TRUE FALSE TRUE FALSE TRUE

