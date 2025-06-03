# Principles of Effective Data Visualization

## Overview

This class introduces participants to best practices for creating visualizations and illustrations that effectively communicate research ideas and data stories to a variety of audience types. We will discuss reasons to visualize data, chart types, use cases, tools & resources, accessible design, and ethical practices.

Upon completion of this one-hour workshop, participants will:

- Understand the importance of data visualizations in the research process
​- Recognize the different types of charts available​ for various types of data
- Learn about tools and resources for creating data visualizations
- Identify best practices in data visualization and see some examples where it makes sense to break the rules

## Data Viz Examples

There are three data viz use cases introduced in this class.

## Anscombe's Quartet (R)

Anscombe’s Quartet is often used to show the value of visualization in statistics.

This code will generate basic summary statistics, which are very similar between the datasets, as well as plots for each that highlight important differnces between them.

Code: [anscombes_quartet.R]()

## Visualizing World Happiness (R and ggplot2)

In this example we create a plot of the 30 top scoring countries in the World Happiness Report from 2017. The data is available on [Kaggle](https://www.kaggle.com/datasets/unsdsn/world-happiness?select=2017.csv).

Code: [ggplot_happiness_scores.R]()
Dataset: [happiness_data/2017.xlsx]

## Graph Visualization

Follow the steps below to create an example co-citation network among a group of researchers.

### Creating a Network in Gephi

1. Download the newest version of Gephi: https://gephi.org
2. Download [Example_Network.csv]() from this repository
4. Open Gephi
4. Go to File → Import spreadsheet
5. Choose the file [Example_Network.csv]()
6. Choose “Comma”, “Edges table”, and “UTF-8”
7. Click Next
8. Choose “Weight” (Integer or Double) and “Type”, click Finish
9. Graph Type: Undirected, “Create missing nodes” or not, “New workspace”
10. Click OK, explore Data Laboratory ( to add node labels, “copy data to other column” and choose ‘ID’, then ‘Label’)
11. Go to Overview
    - Run Statistics
    - Go to Appearance to set node size, color, etc.
    - Go to Layout to reposition nodes and edges

A Gephi file ([Example_Network.gephi]()) of the resulting network is also included.
