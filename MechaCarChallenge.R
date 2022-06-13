#Deliverable 1: Linear Regression to Predict MPG

#Load the dplyr package
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_Table <-  read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform multiple linear regression
fit <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_Table)

#Determine the p-value and the r-squared value using the summary function
summary(fit)


#Deliverable 2: Create Visualizations for the Trip Analysis

#Import and read in the Suspension_Coil.csv file as a dataframe
SC_Table <-  read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Creates a total_summary dataframe using the summarize() function
total_summary <- SC_Table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Creates a lot_summary dataframe using the group_by() and the summarize() functions
lot_summary <- SC_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')




