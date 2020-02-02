# %% In[0]: Intro do DataFrame
english <- c(90, 80, 60, 70)
math <- c(100, 95, 85, 90)

df_midterm = data.frame(english, math)
class <- c(1, 1, 2, 2)

mean(df_midterm$english)
mean(df_midterm$math)

# %% In[1]: Using Exam Data
library(readxl)
df_exam <- read_excel('./../Data/excel_exam.xlsx')
df_exam2 <- read.csv('./../Data/csv_exam.csv')
df_exam3 <- read.csv2('./../Data/csv_exam.csv')

# %% In[2]: Use RDA
rm(df_exam, df_exam2, df_exam3)
save(df_midterm, file = 'df_midterm.rda')
df_exam <- load('df_midterm.rda')
df_midterm
