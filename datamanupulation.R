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


# ----------------------------------------------------

# Filter :

laptop_Rams = laptop %>% filter(RAM == "8GB")
View(laptop_Rams)
# this will show only that laptops that have 8gb of rams

company = laptop %>% filter(Manufacturer == "Apple")
View(company)
# will only show laptops of Apple 


lapWeight = laptop %>% filter(Weight <= "1.00kg")
View(lapWeight)
# will show only laptops having weight less than 1 kg. 

cofiguration = laptop %>% filter(
    Manufacturer == "Dell" & Screen.Size <= 15)
View(cofiguration)


View(laptop %>% select("Manufacturer") %>% filter("Category"=="Notebook"))

quality = laptop %>% filter(Manufacturer == "Apple")
View(quality)








