# Reference
# https://towardsdatascience.com/the-7-r-packages-you-should-be-using-for-data-visualisation-e29010cefe51
# Sustainable Development Solutions Network, 2019, License CC0: Public Domain

# Load packages
library(openxlsx)
library(ggplot2)
library(RColorBrewer)
library(dplyr)

# Data set also available at: https://www.kaggle.com/datasets/unsdsn/world-happiness
data("happy", package = "ggplot2")
happy <- read.xlsx("./happiness_data/2017.xlsx", sheet = '2017_happiness')

happy$Happiness.Score

# Top 30 countries
happy %>%
  group_by(Country) %>% 
  summarise(HappinessScore_Avg = mean(Happiness.Score)) %>%
  top_n(30) %>%
  
  # The average happiness score for each country in the Top 30
  ggplot(aes(x=reorder(factor(Country), HappinessScore_Avg), y=HappinessScore_Avg, fill = HappinessScore_Avg)) + 
  geom_bar(stat = "identity") + 
  xlab("Country") + 
  ylab("Average Happiness Score") +
  
  # Make sure axes start at 0
  scale_y_continuous(expand = expansion(mult = c(0, 0.05))) +
  
  # Choose a theme, axis title sizes and labelling
  theme(legend.position ='none',axis.title.y = element_text(size=10), axis.text.y = element_text(size = 10), axis.title.x = element_text(size= 10),axis.text.x = element_text(size = 10), plot.title = element_text(size=10, hjust = 0.5)) +
  scale_fill_gradientn(name = '',colours = rev(brewer.pal(5,'Spectral'))) +
  geom_text(aes(label = HappinessScore_Avg), hjust = -0.3, size = 3) + ggtitle("Top 30 Countries by Happiness Score") +
  coord_flip()