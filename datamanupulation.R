# Data Manupulation 

# in order to use data manipulation we will use 
# dplyr package 
# so we have to import that library


# select function : 


library(dplyr)
laptop = read.csv("laptops.csv")
# View(laptop %>% select(1,2)) # will only show first 2 columns

lapoo = laptop %>% select(2:5)
View(lapoo)

View(laptop %>% select("Model.Name", "Category", "Screen"))
# printing columns with names directly

View(laptop %>% select("Company", "Product", "Price_euros"))

View(laptop %>% select(starts_with("P"))) # column that start with P

View(laptop %>% select(ends_with("y"))) # this will show column name
# that ends with y