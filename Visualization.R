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

# ------------------------------

# Bar Plot :

# the main diff between the histogram and the bar plot is
# that the histogram is use to draw result for numeric continous
# values while the bar plot is use for categorical values

ggplot(data = diamonds, aes(x=cut)) + geom_bar()
ggplot(data = diamonds, aes(x=cut)) + geom_bar(fill = 'green')
ggplot(data = diamonds, aes(x=cut)) + geom_bar()
ggplot(data = diamonds, aes(x=cut, fill=cut)) + geom_bar()

#ggplot(data = diamonds, aes(x=cut, fill=cut)) + geom_bar()
# it has one aes more that fill=cut it means that 
# give us different colors among the cut of the diamonds

# ----------------------------------------------------


# Scatter Plot :

# scatter plot is use to find the realation between two
# numeric values


ggplot(data = diamonds, aes(x=carat, y=price)) + geom_point()

ggplot(data = diamonds, aes(x=carat, y=price, col=cut)) +
    geom_point()

-------------------------------------------------
    
    # Box Plot :
    
    ggplot(data = diamonds, aes(x=clarity, y=carat, fill=clarity)) + geom_boxplot()




