# MechaCar_Statistical_Analysis

## Overview
In this repository, I perfom the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, there is a summary interpretation of the findings.

## Technologies & Requirements
* Data Source: MechaCar_mpg.csv and Suspension_Coil.csv
* Data Tools: tidyverse, dplyr, ggplot2 and MechaCarChallenge.RScript.
* Software: RStudio and R

## Results
### Linear Regression to Predict MPG
* The MechaCar_mpg.csv file is imported and read into a dataframe
* An RScript is written for a linear regression model to be performed on all six variables
* An RScript is written to create the statistical summary of the linear regression model with the intended p-values

![Deliverable_1.1_Screenshot](https://github.com/heartgears/MechaCar_Statistical_Analysis/blob/main/Challenge/Deliverable_1.1.png)

![(Deliverable_1.2.png)](https://github.com/heartgears/MechaCar_Statistical_Analysis/blob/main/Challenge/Deliverable_1.2.png)

Based on these results, only vehicle length and vehicle ground clearance are statistically likely to add variance to the model. The other metrics,  vehicle weight, spoiler angle, and (AWD) are statistically unlikely to affect MPG.

The p-Value is much smaller than the assumed significance level of 0.05%. Therefore, there is sufficient evidence to reject the null hypothesis, meaning the slope of this model is not zero.

The resulting r-squared value of 0.7149 means that approximately 71% of all mpg predictions will be determined by this model. The multiple regression model therefore does predict mpg of MechaCar prototypes effectively.

### Summary Statistics on Suspension Coils
* The Suspension_Coil.csv file is imported and read into a dataframe
* An RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots
* An RScript is written to create a lot summary dataframe that has the mean, median, variance, and standard deviation for each manufacturing lot

![Deliverable_2.1_Screenshot](https://github.com/heartgears/MechaCar_Statistical_Analysis/blob/main/Challenge/Deliverable_2.1.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Both Lots 1 and 2 meet this requirement, with variance levels of <10, however, Lot 3 exceeds this at 170.28. While our total variance for all lots was 62, which would meet the <100 threshold, breaking down all of the models into groups helps to isolate a problem.

### T-Tests on Suspension Coils
* An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population
* An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population

![Deliverable_3.1_Screenshot](https://github.com/heartgears/MechaCar_Statistical_Analysis/blob/main/Challenge/Deliverable_3.1.png)

![Deliverable_3.2_Screenshot](https://github.com/heartgears/MechaCar_Statistical_Analysis/blob/main/Challenge/Deliverable_3.2.png)

### Study Design: MechaCar vs Competition
While not fully realized, the following outlines a potential study that could quantify how the MechaCar performs against its competition.

**What metric or metrics are being tested**
Some of the most important metrics to consumers include cost - overall cost, fuel efficiency and maintenance costs all strike at the core of that.

**What is the null hypothesis or alternative hypothesis?**
The Null Hypothesis would be that MechaCar is outperforming its competitors based on the selected variables and criteria. The Alternative Hypothesis would negate this, that MechaCar is not outperforming the competition.

**What statistical test would you use to test the hypothesis? And why?**
A multiple linear regression would be the most robust way of determining how these different variables interact, correlate, and potentially drive each other.

**What data is needed to run the statistical test?**
Data would need to be collected from both MechaCar and its competitors concerning overall cost, fuel efficiency and maintenance; this data would all need to be commensurable. 
