# %% In[0]: Libraries
library(dplyr)

# %% In[1]: Import Data
exam = read.csv('./../Data/csv_exam.csv')
exam

# %% In[2]: Filter Function
exam %>% filter(class == 1)
exam %>% filter(class == 2)
exam %>% filter(math > 50)

exam %>% filter(class == 1 & science >= 60)

exam %>% filter(class %in% c(1, 4, 5))

class1 <- exam %>% filter(class == 1)

# %% In[2]: Practice Problem
library(ggplot2)

# Question 1
case1 = mpg %>% filter(displ <= 4)
case2 = mpg %>% filter(displ >= 5)

mean(case1$hwy) > mean(case2$hwy)

# Question 2
case3 = mpg %>% filter(manufacturer == 'audi')
case4 = mpg %>% filter(manufacturer == 'toyota')

mean(case3$cty) > mean(case3$cty)

case5 = mpg %>% filter(manufacturer %in% c('chevrolet', 'ford', 'honda'))
mean(case5$hwy)
