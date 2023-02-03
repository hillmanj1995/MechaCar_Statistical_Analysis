# MechaCar Analysis

## Linear Regression to Predict MPG 
For the first deliverable, the analyst was tasked with running an analysis on the MechaCar_mpg.csv dataset in R to determine which metrics can reasonably predict the mpg of the MechaCar prototypes being analyzed.  The metrics in question were vehicle length, vehicle weight, spoiler angle, AWD and ground clearance.

### Resulting Statistical Summary

![mpg_regression.png](https://github.com/hillmanj1995/MechaCar_Statistical_Analysis/blob/7150a5917eee6de54d082e12d7355f8878849d63/Challenge/mpg_regression.png)

From the statistical summary above, we can answer the following questions:

1. Which variables/coefficients provided a non-random amount of variance to the mpg values?

    The vehicle length and ground clearance provided non-random amounts of variance due to their p-values being under 0.05.  Thus, vehicle length and ground clearance may have a sizable impact on the mpg of the MechaCar prototype.

2. Is the slope of the linear model considered to be zero?

    The slope of the linear model is not zero as the p-value for the model is less than 0.05.

3. Does this linear model predict mpg of MechaCar prototypes effectively?

    The linear model results in a R squared value of 0.7149. This indicates a strong correlation and implies that the model will effectively predict mpg roughly 71.49% of time.

## Summary Statistics on Suspension Coils
Next, The Analyst needed to run an R analysis to determine that the variance of the MechaCar suspension coils did exceed 100 pounds per square inch.  To do this, summaries were performed on multiple manufacturing lots and all the lots in total.

To analyze the variance of the total lots, The Analyst created a dataframe from a summary of the the given suspension coil data set.  That dataframe can be seen below:

![total_dataframe.png](https://github.com/hillmanj1995/MechaCar_Statistical_Analysis/blob/7150a5917eee6de54d082e12d7355f8878849d63/Challenge/total_dataframe.png)

The resulting dataframe showed that the total lots variance was 62.29, and dis not exceed 100.

To analyze the variance of multiple lots, The Analyst did summary of the individual lots and created a dataframe from the summarized results.  That dataframe can be seen below:

![lot_summary.png]()

The dataframe showed that the variance of lots 1 and 2 did not exceed 100 (lot 1: 0.98, lot 2: 7.47).  However, lot 3 had a much larger variance of 170.29.

## T-Tests on Suspension Coils
Lastly The Analyst was tasked with performing t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

The following t-test was performed on the suspension coil data to determine if all of the lots were statistically different from the population mean of 1500.

![total_lot_ttest.png](https://github.com/hillmanj1995/MechaCar_Statistical_Analysis/blob/7150a5917eee6de54d082e12d7355f8878849d63/Challenge/total_lot_ttest.png)

The resulting true mean of all 3 lots as a total is 1498.78 and has a p-value of 0.6.  This means that the mean of all 3 lots as a total is statistically similar to the population mean of 1500.

To make a determination on whether the mean of the individual lots were statistically different from the population mean, the following t-test was performed:

![indiv_lot_ttest.png](https://github.com/hillmanj1995/MechaCar_Statistical_Analysis/blob/7150a5917eee6de54d082e12d7355f8878849d63/Challenge/indiv_lot_ttest.png)

It was shown that both lots 1 and 2 had no statistical difference as their means were 1500 and 1500.2, and their p-values were 1 and 0.6.  Lot 3 resulted in a mean of  1496.14 and a p-value of 0.042, thus, lot 3 was statistically different than the population mean and shouldn't be used within the MechaCar.

## Study Design: MechaCar vs Competition
The Analyst decided to think of another statistical study that the creators of MechaCar could do to gain better knowledge on consumer interest in regards to various metrics at it the car's selling price.  In this analysis, The Analyst would collect a sample of data (n > 50) and hold the selling price as the dependent variable.  The fuel efficiency, horse power, maintenance cost, and safety rating would be held as the independent variables.  The null hypothesis would be: MechaCar is fairly priced based on the various performance metrics when compared against it's competitors.  The alternative hypothesis would be that MechaCar is NOT fairly priced based on the various performance metrics when compared against it's competitors.  To perform this test, a multiple linear regression would be used to show the correlation between the selling price and the other performance metrics.
