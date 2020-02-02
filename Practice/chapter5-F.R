# %% In[0]: Q1
library(ggplot2)
library(dplyr)
mw = midwest
head(mw)

# %% In[1]: Q2
mw = rename(mw, total = poptotal)
mw = rename(mw, asian = popasian)

# %% In[2]: Q3
mw$prop = mw$asian / mw$total
hist(mw$prop)

# %% In[3]: Q4
avg = mean(mw$prop)

mw$test = ifelse(mw$prop >= avg, 'large', 'small')

# %% In[4]: Q5
qplot(mw$test)
