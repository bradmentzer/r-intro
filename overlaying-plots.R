#overlaying plots

library(datasets)

head(lynx)

#Default
hist(lynx)

#Add options

hist(lynx,
     breaks = 14,
     freq = FALSE, #axis shows density, not frequency
     col = "thistle1",
     main = paste("Histogram of Annual Canadian Lynx",
                  "Trappings, 1821-1934"
                  ),
     xlab = "Number of Lynx Trapped")

#Add normal distrobution
curve(dnorm(x, mean = mean(lynx), sd =sd(lynx)),
      col = "thistle4",
      lwd = 2,
      add = TRUE) #superimpose on graph

# Add two kernel density estimators, for skewed distrobution
lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)

# Add a rug plot (verticle lines under the plot for each data point)
rug(lynx, lwd=2, col = "gray")

