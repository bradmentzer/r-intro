# Basic x-y plotting with plot command
# Adapts to data types and number of variables

# Load data sets
library(datasets)

head(iris)

# Plotting with the plot command

?plot #Help with plot

plot(iris$Species) #within the data set iris, use the catagorial variable species
plot(iris$Petal.Length) #quantitative variable
plot(iris$Species, iris$Petal.Width) # Cat x quant
plot(iris$Petal.Length, iris$Petal.Width) #paired quant
plot(iris) #entire data frame

plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000",  # Hex code for datalab.cc red
     pch = 19, #Use solid circles for points
     main = "Iris: Petal Length vs. Petal Width",
     xlab = "Petal Length",
     ylab = "Petal Width")

# Plot formulas with plot ()
plot(cos, 0, 2*pi)
plot(exp,1, 5)
plot(dnorm, -3, +3) #density of a normal distrobution

# Formulate a plot with options 
plot(dnorm, -3, +3,
     col = "#cc0000",
     lwd = 5,#line width
     main = "Standardived Normal Distrobution",
     xlab = "z-scores",
     ylab= "Density"
     )
