# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![Deliverable1](https://github.com/SzeWingChan/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable1_Results.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  Vehicle length and ground clearance are the variables that have a significant impact on mpg values as their p-values are less than 0.001.  

- Is the slope of the linear model considered to be zero? Why or why not?
  The slope of the linear model is not zero.  It is because the p-value of the multiple linear model is less than 0.01.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  The linear model predicts mpg of MechaCar prototypes effectively.  About 71.5% of the variations, denoted by the multiple R-squared, in the data cam be explained by the linear model.


## Summary Statistics on Suspension Coils

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  
![TotalSummary](https://github.com/SzeWingChan/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable2_TotalSummary.png)

  Since the variance of all 3 lots is 62.29 pounds per square inch, the current manufacturing data meet the design specifications for all manufacturing lots in total.

![LotSummary](https://github.com/SzeWingChan/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable2_LotSummary.png)
  However, if the manufacturing is grouped by the individual lot, Lot 3's variance is 170.29 which is higher than the design specifications.

![ManufacturingData](https://github.com/SzeWingChan/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable2_ManufacturingData.png)
  It could be observed that the PSI of the suspension coils produced at Lot 3 is not consistent and the range of variation is larger than in Lot 1 and Lot 2.


## T-Tests on Suspension Coils
![OneSamplettest](https://github.com/SzeWingChan/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable3_OneSamplettest.png)
  Assuimg the signicanice level is 95%, since the p-value is greater than 0.05, therefore, we fail to reject the null hypothesis that the population mean is 1500.  

![Lot1](https://github.com/SzeWingChan/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable3_Lot1.png)
   Assuimg the signicanice level is 95%, since the p-value is greater than 0.05, therefore, we fail to reject the null hypothesis that the population mean is 1500.

![Lot2](https://github.com/SzeWingChan/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable3_Lot2.png)
  Assuimg the signicanice level is 95%, since the p-value is greater than 0.05, therefore, we fail to reject the null hypothesis that the population mean is 1500.

![Lot3](https://github.com/SzeWingChan/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable3_Lot3.png)
  Assuimg the signicanice level is 95%, since the p-value is smaller than 0.05, therefore, we reject the null hypothesis that the population mean is 1500.


## Study Design: MechaCar vs Competition
- What metric or metrics are you going to test?
  To compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers, we will need to collect the following metrics:
    - Cost of the vehicle
    - Gross Vehicle Weight
    - City fuel efficiency
    - Highway fuel efficiency
    - Horsepower
    - Safety rating

- What is the null hypothesis or alternative hypothesis?
  The null hypothesis (H0): There is no statistical difference between the [performance] (one of the six facotrs aforementioned each time) of the MechaCar vehicles and the performance of vehicles from other manufacturers.
  The alternative hypothesis (H1): There is a statistical difference between the [performance] (one of the six facotrs aforementioned each time) of the MechaCar vehicles and the performance of vehicles from competitors.

- What statistical test would you use to test the hypothesis? And why?
  We could employ two-sample t-Tests to test the bypothesis.  The two-sample t-Test determines whether the mean values of the two different samples are statistically different.  By comparing the data of the MechaCar vehicles with vehicles from other manufacturers (one by one), we will be able to test for each category, how are MechaCar vehicles are performing.

- What data is needed to run the statistical test?
  Performance data (all six) of MechaCar vehicles and the performance data of vehicles produced by other manufacturers will be required in order to conduct the statistical test.  Each category will be tested one by one.  