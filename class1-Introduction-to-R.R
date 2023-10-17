# creating variables
y <- 10^2
a <- "predictive analysis"
z <- 10.26
print(z)

# vectors
myvector <- c(1,2,3,4,5)
print(vector)
print(myvector[4])
foo <- 20
bar <- 50
mynewvec <- c(foo,bar)
myothervec <- seq(from=3, to=27, by=3)
myothernewvec <- rep(x=2, times=10)

class activity
question a
b <- 5
c<- -11
#vectors1
myvector1 <- c(-11,-9,-7,-5,-3,-1,1,3,5)
print(myvector1)
myothervec1 <- seq(from=-11, to=5, by=0.3)
print(myothervec1)
# vectors2
mynewvector2 <- c(-1,3,-5,7,-9)
myothernewvector2 <- rep(x=2, times=10)
from largest to smallest. (Hint: use :"each" keyword )
repvector <- rep(-1,3,-5,7,-9), each=10,times=2
repvector <- sort(repc(-1,3,-5,7,-9), each=10,times=2), decreasing=TR

#matrices
#syntax
#mymatrix <- matrix(vector, no_of_rows, no_ofcolumns)
mymatrix <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3)
print(mymatrix[2,2])

mvector <- c(2,2,2,2,2,2,2,2,2)  #rep(x=2, times=9)
mymatrix <- matrix(mvector, ncol=3)
print(mymatrix)

# lists
foo <- list(2.2, "predictive analysis", TRUE, matrix(c(10,20,30,40), nrow=2, ncol=2), "hello")
print(foo)
print(foo[4])

#assigning names
names(foo)<- c("integer", "string", "logical", "matrix", "stringTwo")
print(foo$string)
print(foo$stringTwo)

#dataframes
mydata <- data.frame(person= c("Bob", "Ryan", "Julia"), age= c(31,102,25), sex = factor(c("M","M","F")))
mydata$person

newRecord <- data.frame(person = "sarah", age = 7, sex = "F")

mydata <- rbind(mydata, newRecord)

funny <- factor(c("High", "Low", "Medium", "Medium"))
mydata <- cbind(mydata, funny)