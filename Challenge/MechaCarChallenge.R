#Part 1

#Use the library() function to load the dplyr package
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

head(MechaCar_table)

#Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,MechaCar_table)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,MechaCar_table))



#Part 2

#In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
SusCoil_table <- read.csv(file='Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- SusCoil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
head(total_summary)                                            

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot 
#by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.                                             
lot_summary <- SusCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
head(lot_summary)     



#Part 3

#In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is
#statistically different from the population mean of 1,500 pounds per square inch.
t.test((SusCoil_table$PSI),mu=1500)

#Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(SusCoil_table, Manufacturing_Lot=="Lot1")
lot2 <- subset(SusCoil_table, Manufacturing_Lot=="Lot2")
lot3 <- subset(SusCoil_table, Manufacturing_Lot=="Lot3")

t.test((lot1$PSI),mu=1500)
t.test((lot2$PSI),mu=1500)
t.test((lot3$PSI),mu=1500)


