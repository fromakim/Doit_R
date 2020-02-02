# %% In[0]: Using Dplyr
library(dplyr)
library(ggplot2)
df_raw = data.frame(var1 = c(1, 2, 3), var2 = c(2, 4, 6))

df_new = df_raw

df_new = rename(df_new, v2 = var2)

df_new = rename(df_new, v1 = var1)

df_new$v3 = df_new$v1 + df_new$v2

# %% In[1]: Using mpg
mpg$total = (mpg$cty + mpg$hwy) / 2
head(mpg)
hist(mpg$total)

mpg$test = ifelse(mpg$total >= 20, 'pass', 'fail')

table(mpg$test)
