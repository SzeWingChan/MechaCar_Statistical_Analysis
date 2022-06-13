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
Since the variance is 62.29 pounds per square inch.  The current manufacturing data meet the desgin specification for all manufacturing lots in total.

![LotSummary](https://github.com/SzeWingChan/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable2_LotSummary.png)
However, if the manufacturing is grouped by the indviudal lot, Lot 3's variance is 170.29 which is higher than the desgin specification.

