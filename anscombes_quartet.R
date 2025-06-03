# References:
# https://medium.com/@zumaia/anscombes-quartet-in-r-535a50ee3bd9
# https://rpubs.com/debosruti007/anscombeQuartet

# install.packages("gridExtra")
library(ggplot2)
library(grid)
library(gridExtra)
library(datasets)

# The Anscombe dataset
datasets::anscombe

# Summarize data with simple descriptive statistics
summary(anscombe)

# Scatter plot for each (x,y) pair of data
#
# Dataset 1
p1 <- ggplot(anscombe) +
  geom_point(aes(x1, y1), color = "purple", size = 2.5) +
  scale_x_continuous(breaks = seq(0,20,2)) +
  scale_y_continuous(breaks = seq(0,12,2)) +
  expand_limits(x = 0, y = 0) +
  labs(x = "x1", y = "y1",
       title = "Dataset 1" ) +
  theme_bw()
p1

# Dataset 2
p2 <- ggplot(anscombe) +
  geom_point(aes(x2, y2), color = "purple", size = 2.5) +
  scale_x_continuous(breaks = seq(0,20,2)) +
  scale_y_continuous(breaks = seq(0,12,2)) +
  expand_limits(x = 0, y = 0) +
  labs(x = "x2", y = "y2",
       title = "Dataset 2" ) +
  theme_bw()
p2

# Dataset 3
p3 <- ggplot(anscombe) +
  geom_point(aes(x3, y3), color = "purple", size = 2.5) +
  scale_x_continuous(breaks = seq(0,20,2)) +
  scale_y_continuous(breaks = seq(0,12,2)) +
  expand_limits(x = 0, y = 0) +
  labs(x = "x3", y = "y3",
       title = "Dataset 3" ) +
  theme_bw()
p3

# Dataset 4
p4 <- ggplot(anscombe) +
  geom_point(aes(x4, y4), color = "purple", size = 2.5) +
  scale_x_continuous(breaks = seq(0,20,2)) +
  scale_y_continuous(breaks = seq(0,12,2)) +
  expand_limits(x = 0, y = 0) +
  labs(x = "x4", y = "y4",
       title = "Dataset 4" ) +
  theme_bw()
p4

# Plot all four datasets together
grid.arrange(grobs = list(p1, p2, p3, p4),
             ncol = 2,
             top = "Anscombe's Quartet")


# Create a linear model for each dataset
lm1 <- lm(y1 ~ x1, data = anscombe)
lm1

lm2 <- lm(y2 ~ x2, data = anscombe)
lm2

lm3 <- lm(y3 ~ x3, data = anscombe)
lm3

lm4 <- lm(y4 ~ x4, data = anscombe)
lm4

# Create a linear regression model and a scatterplot for each dataset in one step
p1_fitted <- p1 + geom_abline(intercept = 3.0001, slope = 0.5001, color = "purple")
p2_fitted <- p2 + geom_abline(intercept = 3.001, slope = 0.500, color = "purple")
p3_fitted <- p3 + geom_abline(intercept = 3.0025, slope = 0.4997, color = "purple")
p4_fitted <- p4 + geom_abline(intercept = 3.0017, slope = 0.499, color = "purple")
grid.arrange(grobs = list(p1_fitted, p2_fitted,
                          p3_fitted, p4_fitted),
             ncol = 2,
             top = "Anscombe's Quartet")
