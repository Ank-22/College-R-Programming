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
# o:logi [1:5] TRUE FALSE TRUE FALSE TRU


# Character Vector

z <- c("Ank","it")
z
# O:[1] "Ank" "it" 
typeof(z)
# O:[1] "character"
class(z)
# O:[1] "character"
length(z)
# O:[1] 2
str(z)
# O:chr [1:2] "Ank" "it"

z <- c(z, "Sinha")
z
# O: [1] "Ank"   "it"    "Sinha"
Z <- c("22",z)
Z
# O: [1] "22"    "Ank"   "it"    "Sinha"

length(z)
nchar(z)


# Create Sequence from 1 to 10
series <- 1:10
series
# O:[1]  1  2  3  4  5  6  7  8  9 10
typeof(series)
# O:[1] "integer"
class(series)
# O:[1] "integer"
length(series)
# O:[1] 10
str(series)
# O:int [1:10] 1 2 3 4 5 6 7 8 9 10
seq(10)
# O:  [1]  1  2  3  4  5  6  7  8  9 10

# Squence Step by

seq(from = 1, to = 10, by=0.5) 
# O:  [1]  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5  7.0  7.5  8.0
#[16]  8.5  9.0  9.5 10.0
seq(from = 1, to = 10, by=5)
# O: [1] 1 6 
seq(from = 1, to = 10, by=4)
# O: [1] 1 5 9
old_number <- seq(from = 1, to = 10, by=2)
old_number
# O: [1] 1 3 5 7 9
even_number <- seq(from = 0, to = 10, by = 2)
even_number
# O: 0  2  4  6  8 10


# Sub setting
even_number[2]
# O:[1] 2
even_number[1:4]
# O:[1] 0 2 4 6
even_number [2:5]
# O:[1] 2 4 6 8
even_number [c(3,1,4)]
# O:[1] 4 0 6

# Missing Value

x <- c(0.5,NA,0.7)
is.na(x)
# O: [1] FALSE  TRUE FALSE
sum(is.na(x))
# O : [1] 1
!is.na(x)
# O : [1]  TRUE FALSE  TRUE
sum(!is.na(x))
# O : [1] 2
anyNA(x)
# O: [1] TRUE
x1 <- c(TRUE,NA,TRUE,NA.NA)
anyNA(x1)
# O: [1] FALSE
x2 <- c("GG",NA,"Wp",NA)
is.na(x2)
# O:[1] FALSE  TRUE FALSE  TRUE
anyNA(x2)
# O: [1] TRUE
sum(is.na(x2))
# O: [1] 2
