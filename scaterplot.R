# Scatterplots for the association between two quantitative variables
# if variables are linear, consistant spread, outliers, correlation

library(datasets)

head(mtcars)

hist(mtcars$wt)
hist(mtcars$mpg)
plot(mtcars$wt, mtcars$mpg)

plot(mtcars$wt, mtcars$mpg,
     pch = 19,
     cex = 1.5, #make 150% size
     col = "#cc0000",
     main = "MPG as a Function of Weight of Cars",
     xlab = "Weight (in 1000 pounds)",
     ylab = "MPG" )
