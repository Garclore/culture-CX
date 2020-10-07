# Set output to have 10 significant digits
options(digits=10)
#load tidyverse and lubridate to help with date conversions
library(tidyverse)
library(lubridate)
# Connect to our data
myExploratoryData <- read.csv("~/Downloads/Patient_survey__HCAHPS__-_Hospital.csv")
# a command to see to give a quick snapshot the data, and add columns of data to help in plots
summary(myExploratoryData)
str(myExploratoryData)
head(myExploratoryData)
class(myExploratoryData)
#calculate the mean, exclude records in the averag calc that star rating
str(myExploratoryData$Patient.Survey.Star.Rating)
#somewhere ~ 31000 observations have star ratings... data is 1,2,3,4,Not Applicable need to remove NA and convert to numberic
f <- factor(c("1","2","3","4","5","6","7"))
levels(f) <- c("1","2","3","4","5","6","7")
as.numeric(levels(myExploratoryData$Patient.Survey.Star.Rating))[]
myExploratoryData$Star <- format(as.numeric(length = 0,myExploratoryData$Patient.Survey.Star.Rating))
.mean(myExploratoryData$Star,na.rm = "TRUE")
hist(myExploratoryData$Star)
h <- hist(myExploratoryData$Patient.Survey.Star.Rating)
view(h)
str(h)
sum(h$counts)