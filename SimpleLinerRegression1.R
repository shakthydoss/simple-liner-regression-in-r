# Author: shakthydoss
# Webiste: shakthydoss.com 
#
# A sample R program to analysis liner regression mode 
# Dataset used in this progam contains age and bloodpressure of patients. We will try predict bloodpressure for a given age.
# for details: shakthydoss.com/simple

# remove unwated objects in the current workspace.
rm(list =ls())

# load the dataset.
bp.dataset <- read.csv("bp.csv")

#backup old graphical settings.
opar <- par(no.readonly=TRUE)

#attach the dataset to search path.  
attach(bp.dataset)

# customize font, style, color and other graphical settings. 
par(col.main="darkred" )
par(font.main=1)
par(cex.main=0.9 , cex.lab=0.8 , cex.axis=0.7)

# set graph arrangement in the plot panel.
layout(matrix(c(1,2,3,1,4,5), ncol=2 )) 

# draw a scatter plot. 
plot(x=age,bloodpressure , ann=FALSE , pch=21 , col="blue", bg="green" ,  )


# adding text to scatter plot. 
title(main="Age vs Blood Pressure" , xlab="Age", ylab="Blood Pressure")

# fit a liner model 
model <- lm(bloodpressure ~ age)

# draw a referece line
abline(model , col="red",lty=2 , lwd=1.5)

# diagnostic plots 
plot(model)
print(model)

#detach the dataset from search path
detach(bp.dataset)

# restore old graphical settings
par(opar)
