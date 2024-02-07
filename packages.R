# install packages, if needed, then load packages
install.packages("pacman")

#Then load packages
library(pakman)

# Use these commands even if the packages arent loaded
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubricate, plotly, rio, shiny, stringr, tidyr)

library(datasets) # Load base packages manually

#Clear packages
p_unload(dplyr, tidyr, stringr) #Clear specific packages
p_unload(all) # Clear all add-ons
detach("package:datasets", unload = TRUE) # Clear base packages


# Clear console
cat("\014") #crtl+L
