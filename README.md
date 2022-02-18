
# MechaCar_Statistical_Analysis

## Project Overview:

AutoRU's newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing teams progress.The help fix the issues, AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

### Deliverables:

•	Deliverable 1: Linear Regression to Predict MPG

•	Deliverable 2: Summary Statistics on Suspension Coils

•	Deliverable 3: T-Test on Suspension Coils

•	Deliverable 4: Design a Study Comparing the MechaCar to the Competition

### Resources:

•	Data Sources:

MechaCar MPG dataset

Suspension Coil dataset

•	Software:

RStudio

## Project Results:

### Linear Regression to Predict MPG


![](Pics/Linear%20Regression.png)

#### Summary

•	According the summary results, vehicle length, ground clearence are statistically unlikely to provide randomn results of variance to the linear model. 

•	The p-value is much smaller then the significance level of 0.05 (p-Value = 5.35e-11). There is sufficient evidence that the slope of the linear model is not 0.

•	With an R-squared of 0.71 there is good chance that this linear model is effective at predicting mpg. There is a 71% chance that the mpg is explained using this model.


## Summary Statistics on Suspension Coils

![](Pics/Total%20Summary.png)


•	Specificiations for the MechaCar dictate the suspension coils can not exceed 100. The Variance on the summary of all lots is 62 PSI and that is within the limits


![](Pics/Lot%20Summary.png)


•	Lot 1 (Variance = 1) and Lot 2 (Variance = 7.5) are within the the limit. However Lot 3 (Variance 170) exceeds the PSI limit of 100


![](Pics/Box%20Plot.png)

### T-Test on Coils


![](Pics/Sample%20T-Test.png)


•	P-Value = 

![](Pics/T%20Test%20Lots.png)


•	Lot 1 (P-Value = 1) is above the significance level of 0.05. Do not have enogh evidence to reject the null hypothesis

•	Lot 2 (P-Value = 0.60) is above the significance level of 0.05. Do not have enogh evidence to reject the null hypothesis

•	Lot 3 (P-Value = 0.04) is below the significance level of 0.05. Do have enogh evidence to reject the null hypothesis

## Study Design:

Since this is a new protoype we would want to see which cars/manufacturers it could be compared against to better determine what price to sell the car at.

We would need to collect data from other cars released tha year

•	Current Price (Selling)

•	Drive Package

•	Engine Type

•	MPG 

Hypothesis: Null and Alternative

After determining which factors are key for the MechaCar's genre:

•	Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors for its genre.

•	Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on performance of key factors for its genre.

Statistical Tests

Multiple Linear regression testing could be done to analyze the data




