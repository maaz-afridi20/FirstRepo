# Data Visualization : (ggplot2)

library(ggplot2)


# Histogram : 
# when we want to find the variation of data
# with in the same column then we can use histogram
# that how the info of the one column is changing


View(diamonds)
View(str(diamonds))

ggplot(data = diamonds, aes(x=price)) + geom_histogram(fill = 'green')

# so in visualization in ggplot we will have different type of
# parameters like we see above first we assign that from where the 
# data is comming and then we give aes i-e aesthetic and here we give 
# the x axis to price then for making the graph we use geometry 
# parameter which goem and for histogram we will use 
# goem_hist()
# for changing color we can use fill attribute 

View(diamonds)
View(str(diamonds))
ggplot(data = diamonds, aes(x=price)) + geom_histogram(fill = 'yellow', col="black")

# for adding color to the boundries of the lines of plot we can 
# use col attribute
