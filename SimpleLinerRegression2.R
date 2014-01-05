# Author: shakthydoss
# Webiste: http://shakthydoss.com/

# A sample R program to analysis liner regression model with multiple variables.
# Dataset used in this progam contains age of a fish, temperature of water and length of the fish. We will try predict length of fish for a given age and temperature.

# for details: http://shakthydoss.com/prediction-using-simple-liner-regression-r-part-2/


# remove unwated objects in the current workspace.
rm(list =ls())

# load the dataset.
len.dataset <- read.csv("lengthoffish.csv")

#backup old graphical settings.
opar <- par(no.readonly=TRUE)

#attach the dataset to search path.  
attach(len.dataset)

# customize font, style, color and other graphical settings. 
par(col.main="darkred" )
par(font.main=1)
par(cex.main=0.9 , cex.lab=0.8 , cex.axis=0.7)

# set graph arrangement in the plot panel.
layout(matrix(c(1,2,3,4), ncol=2 )) 

# fit a liner model 
model <- lm(length~. , data=len.dataset[-1])

# draw a referece line
abline(model , col="red",lty=2 , lwd=1.5)

# diagnostic plots 
plot(model)

print(model)

#detach the dataset from search path
detach(len.dataset)

# restore old graphical settings
par(opar)
