# %% In[0]: install package ggplot2
library('ggplot2')

# %% In[1]: Test QPlot
x <- c('a', 'b', 'c', 'd', 'e')

qplot(x)

# %% In[2]: QPlot the mpg data

qplot(data = mpg, x = cty)
qplot(data = mpg, x = drv, y = hwy)
qplot(data = mpg, x = drv, y = hwy, geom = 'line')
qplot(data = mpg, x = drv, y = hwy, geom = 'boxplot')
qplot(data = mpg, x = drv, y = hwy, geom = 'boxplot', color = drv)

help(qplot)
