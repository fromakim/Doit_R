# %% In[0]: Data Explore Basic
exam <- read.csv('./../Data/csv_exam.csv')

head(exam)
tail(exam, 10)

dim(exam)
str(exam)

summary(exam)

# %% In[1]: Data Explore Basic with mpg Data
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)

head(mpg)
dim(mpg)
str(mpg)

summary(mpg)
