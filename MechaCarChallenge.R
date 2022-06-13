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

#Create a graph to show the data of all 3 lots
plot(SC_Table[, 3],  main="PSI of Suspension Coils", 
     xlab="Vehicle", ylab="PSI",
     col = c(rep("red", 50), rep("blue", "50"), rep("purple", 50)))
legend("topleft", c("Lot 1","Lot 2", "Lot 3"), fill=c("red", "blue", "purple"))

#SC_lot1 <- SC_Table[SC_Table[, 2] == "Lot1", 3]
#SC_lot2 <- SC_Table[SC_Table[, 2] == "Lot2", 3]
#SC_lot3 <- SC_Table[SC_Table[, 2] == "Lot3", 3]
#plot(SC_lot1)
#plot(SC_lot2)
#plot(SC_lot3)


#Deliverable 3: T-Tests on Suspension Coils

#Use t.test() to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(SC_Table$PSI, mu=1500)

#Use subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
lot1 <-  subset(SC_Table, Manufacturing_Lot == "Lot1")
t.test(lot1$PSI, mu=1500)

lot2 <-  subset(SC_Table, Manufacturing_Lot == "Lot2")
t.test(lot2$PSI, mu=1500)

lot3 <-  subset(SC_Table, Manufacturing_Lot == "Lot3")
t.test(lot3$PSI, mu=1500)
