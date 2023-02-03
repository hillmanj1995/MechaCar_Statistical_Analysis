#Read in CSV file
demo_table <- read.csv(file='demo.csv',check.names = F, stringsAsFactors = F)

#import JSON library
library(jsonlite)

#Read in JSON file
demo_table2 <- fromJSON(txt='demo.json')

#filter your data
filter_table <- demo_table2[demo_table2$price > 10000,]

filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status) #filter by price and drivetrain

filter_table3 <- demo_table2[("clean" %in% demo_table2$title_status) & (demo_table2$price > 10000) & (demo_table2$drive == "4wd"),]

#sample some data
sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"),4)

num_rows<- 1:nrow(demo_table)

sample_rows <- sample(num_rows, 3)

#retrieve the requested data within the demo_table
demo_table[sample_rows,]

#If we want to combine all three steps in a single R statement, our code would be as follows:
demo_table[sample(1:nrow(demo_table), 3),]

#use mutate()
demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE) #add columns to original data frame

#group_by and Summarize
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table

summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep') #create summary table with multiple columns

#read in demo2.csv
demo_table3 <- read.csv('demo2.csv',check.names = F, stringsAsFactors = F)


long_table <- gather(demo_table3,key='Metric',value="Score",buying_price:popularity)

#spread out long format data
wide_table <- long_table %>% spread(key="Metric",value="Score")
