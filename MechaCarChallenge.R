#Deliverable 1

#Load the dplyr package
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_Table <-  read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform multiple linear regression
fit <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_Table)

#Determine the p-value and the r-squared value 
summary(fit)



