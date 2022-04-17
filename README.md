# MechaCar Statistical Analysis
## Overview
## Linear Regression to Predict MPG

![MPG Screeenshot](https://github.com/dkleitsch/MechaCar_Statistical_Analysis/blob/main/R/MPG%20Screenshot.png)

- Vehicle length, ground clearance, and the intercept all provided a non-random amount of variance for the mpg values with a p-value of 0.001 or higher. 
- The slope of the linear model is not considered to be zero because the coefficients (or slope) for the variables are 6.27 for vehicle length and 3.55 for ground clearance.
- While the R-squared value for this linear model is .71, which indicates that the model predicts about 71% of the variability in mpg, we must be careful because the y-intercept was significant at a level of .001 or higher.  This means that our significant variables (vehicle length and ground clearance) may need scaling or transforming or there are other variables that better explain the variance.

## Summary Statistics on Suspension Coils

**Total Summary** 

![Total Summary](https://github.com/dkleitsch/MechaCar_Statistical_Analysis/blob/main/R/Total%20Summary.png)  

**Lot Summary**

![Lot Summary](https://github.com/dkleitsch/MechaCar_Statistical_Analysis/blob/main/R/Lot%20Summary.png)

The current manufacturing data does not meet the design specification that the variance of the suspension coils must not exceed 100 pounds per sqaure inch.  The variance for Lot 3 is 170.29 pounds per square inch.

## T-Tests on Suspension Coils

**All Manufacturing T-Test**

![All Manufacturing T-test](https://github.com/dkleitsch/MechaCar_Statistical_Analysis/blob/main/R/All%20Manufacturing%20T%20Test.png)

**Lot 1 T-Test**

![Lot 1 T-test](https://github.com/dkleitsch/MechaCar_Statistical_Analysis/blob/main/R/Lot%201%20ttest.png)

**Lot 2 T-Test**

![Lot 2 T-Test](https://github.com/dkleitsch/MechaCar_Statistical_Analysis/blob/main/R/Lot%202%20ttest.png)

**Lot 3 T-Test**

![Lot 3 T-Test](https://github.com/dkleitsch/MechaCar_Statistical_Analysis/blob/main/R/Lot%203%20ttest.png)

The findings for the Total Summary, Lot 1, and Lot 2 T-tests found that there was no statistical significance between the means of the sample and the population mean of a PSI of 1500, with the p-values being 0.06, 1, and 0.61 respectively.  The findings for the Lot 3 T-test did find a statistically significant difference between the sample mean and the population mean of 1500.  This means that there is something occuring within Lot 3 that is affecting the PSI and should be further investigated.

## Study Design: MechaCar vs Competition
In this study, I will compare the highway fuel efficiency between the MechaCar and its competition.  My hypothesis is that the MechaCar will have a highway fuel efficiency that is at least 10% higher than its competition.  Therefore my null hypothesis would be that the MechaCar does not have a higher highway fuel efficiency than its competition.  I will use a Two-Sample T-test to see if there is a statistically significant difference between the mean highway fuel efficiencies of the MechaCar and its competition.  I will need data reporting the highway fuel efficiency of the MechaCar, along with the data for its competition.   

