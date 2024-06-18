#Load data
data <- read.csv("students_admission.csv")

library(tidyverse)


str(dat) # structure of dataset

head(data) # first 6 observations
summary(data) #summary of the dataset

#min and max functions
min(data$height)#minimum height
max(data$weight)#maximum width

#range() function
rng <- range(data$height) #gives you both max and min

#mean() function
mean(data$age)
mean(data$age, na.rm=TRUE)

#median() function
median(data$weight)

# with the quantile() function
quantile(data$weight, 0.25) # first quartile

#Interquartile range
IQR(data$weight) #the difference between the first and third quartile

#Standard deviation and variance

sd(data$height) # standard deviation

var(data$height) # variance

#frequency
table(data$gender)#frequency table
table(data$race, data$gender) #contingency table
prop <- prop.table(table(data$race, data$gender)) #proportion

round(prop *100,2) #percentage and 2 decimal places
barplot(prop)
