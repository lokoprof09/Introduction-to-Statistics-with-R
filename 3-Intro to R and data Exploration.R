#Load data
data <- read.csv("students_admission.csv")

library(tidyverse)
glimpse(data)

#EDA with dataMaid
library(dataMaid)
makeDataReport(data, output="word", replace=TRUE)


#EDA with explore 
library(explore)
explore(data)


