# Bar charts

# Load datasets
library(datasets)

#Load data

?mtcars

head(mtcars) #look at the first few rows of cars

barplot(mtcars$cyl) # Doesnt work

#Create a table with frequencies for each catagory
cylinders <- table(mtcars$cyl) #create an object containing a table of cylinders
barplot(cylinders)
plot(cylinders) # default x-y
