#Basic statistics

#Good packages to load every time
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny,
               stringr, tidyr)
library(datasets)
head(iris)

# Histogram
hist(iris$Petal.Length)

# Summary
summary(iris$Species) #Catagorical variable
summary(iris$Sepal.Length) #Quantitative var
summary(iris) #Entire data frame

# Load psych package
p_load(psych)

# Describe for quantitative var only
describe(iris$Sepal.Length)
describe(iris)


# Selecting cases
# choose specific cases by category, or value of a scaled variable
# Versicolor
hist(iris$Petal.Length[iris$Species == "versicolor"],
     main = "Petal Length: Versicolor")

# Virginica
hist(iris$Petal.Length[iris$Species == "virginica"],
     main = "Petal Length: Virginica")

# Setosa
hist(iris$Petal.Length[iris$Species == "setosa"],
     main = "Petal Length: Setosa")

# Select for short petals only
hist(iris$Petal.Length[iris$Petal.Length < 2],
     main = "Petal Length < 2")

# Multiple selctors for short petals of virginica
hist(iris$Petal.Length[iris$Species == "virginica" &
                         iris$Petal.Length < 5.5],
     main = "Petal Length: Short Virginica")

# if youre going to use the same sub sample, then create a new dataset

# Format: data[Rows, colums]
#this creates a dataset i.setosa (iris.setosa) and assigns it to that species
i.setosa <- iris[iris$Species == "setosa",]

