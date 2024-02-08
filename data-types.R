# Managing data types and structures
# most common data structures are vector, matrix/array, data frame, and list

# Numeric data
n1 <- 15 # Double percision by default
n1
typeof(n1)

# Char
c1 <- "c"
typeof(c1)

c2 <- "a string of text"
c2

#Logical
l1 <- TRUE

#Vectors are 1+ num in a 1d array of all same data dype
#R's basic object
# v1 gets conncatinate (vector)
v1 <- c(1,2,3,4,5)
is.vector(v1)
v2 <- c(T,T,F,T,F,F,T)

# Matrix is 2d or the same length and data class. Columns named by index
m1 <- matrix(c(T,T,F,F,T,F), nrow = 2) #2 rows
m1

m2 <- matrix(c("a", "b",
               "c", "d"),
             nrow = 2,
             byrow= T) #organize by row

m2
#Array identical to matrix of 3 or more dimensions
a1 <- array(c(1:24), c(4, 3, 2)) #1 through 24 in rows, columns, tables
a1

#Data frame can have vectors of multiple types of all same length-- like spreadsheet
# can conbine vectors of the same length
vNumber <- c(1, 2, 3)
vCharacter <- c("a", "b", "c")
vLogical <- c(T, F, T)

# column bind into single data frame
dfa <- cbind(vNumber, vCharacter, vLogical)
dfa #matrix of one data type, made everything a character variable

# make it a data frame
df <- as.data.frame(cbind(vNumber, vCharacter, vLogical))
df #data frame with three different data types

#List is flexible ordered collection of elements of any class, length, or structure
o1 <- c(1, 2, 3)
o2 <- c("a", "b", "c", "d")
o3 <- c(T, F, T, T, F)

list1 <- list(o1, o2, o3)
list1

list2 <- list(o1, o2, o3, list1) #List within list
list2

#Coorsionn is changing data object from one type to another
# Automatic coorcion goes to least restrictive data type
(coerce1 <- c(1, "b", TRUE)) #puting () around var automatically saves it and shows responce
typeof(coerce1)

# Coerce to integer

(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(5))
typeof(coerce3)

# Coerce character to numeric
(coerce4 <- as.numeric(c("1", "2", "3")))
typeof(coerce4)

#coerce martix to dataframe
(coerce5 <- matrix(1:9, nrow=3))

(coerce6 <- as.data.frame(matrix(1:9, nrow=3)))
is.data.frame(coerce6)
