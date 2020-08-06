# explicit converion
as.numeric("1")

as.character(1:2)


# Martix - 2 Dimensional Homogeneous

m <- matrix(nrow = 2, ncol = 2 )
m


str(m)
# O : logi [1:2, 1:2] NA NA NA NA

class(m)
# O:  "matrix" "array"

dim(m)
# O: [1] 2 2

four <- matrix(c(1,2,3,4), nrow=2, ncol=2)
four               
class(four)
four[1]
four[1,]
four[,1]
four[1,2]
four[2.1]


typeof(four)
typeof(four[1,])


n <- matrix(1:6, nrow = 2 , ncol=3)
n

p <- matrix(1:9, nrow = 3, ncol = 3, byrow =TRUE)
p


m <- 1:10
m

dim(m) <- c(2,5)
m


x <- 1:3
y <- 10:12
z <- matrix(c(x,y), 3,2)
z

cbind(x,y)

rb<- rbind(x,y)
class(rb)


x <- list(1:3, "a",c(TRUE,FALSE,TRUE), c(23,2.9,5.89))
x
typeof(x)
class(x)
str(x)


x[[3]][2]

y <- list(1, "A", 2.3, 1i+64)  
y
length(y)


x <- 1:20
y <- as.list(x)
y
length(y)

str(y)



head(iris)

xlist <- list(a="karthik ram",
              b=1:10,
              data=head(iris))
xlist
str(xlist)


names(xlist)

length(xlist)

xlist$data


# Dataframe 

# Two D heterogeneous


dat <- data.frame(id= letters[1:10], x= 1:10, y = 20:11)
dat

class(dat)
typeof(dat)
str(dat)

length(x)


head(dat)
tail(dat)
dim(dat)
nrow(dat)
ncol(dat)
names(dat)
colnames(dat)

dat$y


?iris

dfiris <- iris
str(dfiris)

head(dfiris)
tail(dfiris)
names(dfiris)
nrow(dfiris)
ncol(dfiris)




?mtcars

dfmt <- mtcars

str(dfmt)
head(dfmt)
tail(dfmt)
names(dfmt)
typeof(dfmt)

row.names(dfmt)
row.names(dfiris)


