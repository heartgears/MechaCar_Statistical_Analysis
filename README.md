# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![Deliverable_1.1_Screenshot](https://github.com/heartgears/MechaCar_Statistical_Analysis/blob/main/Challenge/Deliverable_1.1.png)

![(Deliverable_1.2.png)](https://github.com/heartgears/MechaCar_Statistical_Analysis/blob/main/Challenge/Deliverable_1.2.png)

Based on these results, only vehicle length and vehicle ground clearance are statistically likely to add variance to the model. The other metrics,  vehicle weight, spoiler angle, and (AWD) are statistically unlikely to affect MPG.

The p-Value is much smaller than the assumed significance level of 0.05%. Therefore, there is sufficient evidence to reject the null hypothesis, meaning the slope of this model is not zero.

The resulting r-squared value of 0.7149 means that approximately 71% of all mpg predictions will be determined by this model. The multiple regression model therefore does predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
![Deliverable_2.1_Screenshot](https://github.com/heartgears/MechaCar_Statistical_Analysis/blob/main/Challenge/Deliverable_2.1.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Both Lots 1 and 2 meet this requirement, with variance levels of <10, however, Lot 3 exceeds this at 170.28. While our total variance for all lots was 62, which would meet the <100 threshold, breaking down all of the models into groups helps to isolate a problem.

## T-Tests on Suspension Coils
![Deliverable_3.1_Screenshot](https://github.com/heartgears/MechaCar_Statistical_Analysis/blob/main/Challenge/Deliverable_3.1.png)

![Deliverable_3.2_Screenshot](https://github.com/heartgears/MechaCar_Statistical_Analysis/blob/main/Challenge/Deliverable_3.2.png)
