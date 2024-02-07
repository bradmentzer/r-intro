# quantatative data for histograms
#look for shape, gaps, outliers, and symetry

library(datasets)

head(iris)

# Basic histogram

hist(iris$Sepal.Length)
hist(iris$Petal.Length)

# Put graps in 3 rows and 1 column
par(mfrow = c(3,1)) #for the paramater, concatonacte

#Histograms for each species using options
hist(iris$Petal.Width [iris$Species == "setosa"], #selects only the rows for setosa
      xlim= c(0,3), #all histograms have same x scale
      breaks = 9,
      main = "Petal Width for Setosa",
      xlab = "",
      col = "red")
hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Versicolor",
     col = "purple")
hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Virginica",
     col = "blue")

# Restore graphical parameters
par(mfrow=c(1,1))
