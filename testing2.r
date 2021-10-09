a = "pen"
print(a)
a = "laptop"
print(a)
-------------
    # variables
    
    # variables name can be ant thing
    
    num1 = 5
class(num1)

char1 = "hello"
print(char1)
class(char1)

logical1 = TRUE
class(logical1)

comp1 = 2+10i
print(comp1)
class(comp1)
----------------------
    #operators in R
    # assignment operator
    b = 1
print(b)

# another way of declaring

b <- 5
print(b)

10 -> b
print(b)

# ----------------------------
# assignment operators

num1 = 10
num2 = 20
print(num1/num2)
print(num1*num2)
print(num1+num2)
print(num1-num2)
# -------------------------    

# Relational Operators

num1 = 10
num2 = 20
print(num1<num2)
print(num1>num2)
print(num1==num2)
print(num1!=num2)
# ------------------------------------

# logical operators


log1 = TRUE
log2 = FALSE

print(log1 & log2)
print(log1 & log1)
print(log1 | log1)
print(log1 | log2)
print("---")

# ------------------------------------
# Data Structures


# there are multiple number of data struc
# vector, matrix, list, array, dataframe
# Factor



# Vector : 


#  in vector all the values should be of same data
# mean if it is number then it should all be numbers
# if there is characters then it should all be
# characters we cannot store diff type of
# things in vector
# so if we want to create vector then we will use
# vector is homogenous data struct
# c()  like
# vector name may b any thing
# vec1 = c(1, 2, 3)
# if we put 2 different things in vector
# then the thing which have more presedince
# the vector will change to that like
# mix = c(1, T, 2, 3, F)
# so now in this the presedence of int is more so it
# will change the T and F to 1 and 0 respectively
# same will be the case to another data types
# the precidence of character is more than numeric



vec1 = c(1, 2, 3)
print(vec1)
class(vec1)

vec2 = c("a", "b", "c")
print(vec2)

vec3 = c(T, F)
print(vec3)

mix = c(1, 2, T, F, 3)
print(mix)

mix2 = c(1, "a", 2, "b")
print(mix2)

mix3 = c(1, 'a', T, 2, 3, 'b', 'c', 5)
print(mix3)

# extracting element from vector


print(mix3[1:6])
# just like python
# will show element from 1 to 6 in mix3 vector

# --------------------------------------------    
# List :

# list is a hetregenous data structure 
# we can give diff type of data at the 
# same time like 
# list('a', 1, TRUE) etc
# for making list we will use keyword
# list for making lists





l1 = list(1, 2, 'a', TRUE, FALSE)
print(l1)
# This will print whole list

class(l1[[1]]) # will show the class of 1
# which is numeric
class(l1[[3]]) # this is character


li = list(c(1, 2, 3), c('a', 'b', 'c'), c(T,F))
print(li)

print(li[[1]]) # this will print numeric vector
print(li[[2]]) # this will print character vector
print(li[[3]]) # this will print logical vector

print(li[[2]][1]) # this will print 'a' in 
# character vector

print(li[[3]][1]) # this will print T from 3rd vctor
# ------------------------------------------------

# Matrix : 

# matrix is 2 dimensional homogeneous data structure
# it has rows and columns
# it is homogeneous so the value should be same

matric = matrix(c(1, 2, 3, 4, 5))
print(matric) # matrix of 5 columns and 1 row

mat2 = matrix(c(2, 4, 6, 8, 10, 12), ncol = 2, nrow = 3)
print(mat2) # matrix of 2 column and 3 rows
# and if we see the values are save according to column vise
# in first column 2,4,6 are save while 8,10,12 are save in 2nd col
# but if we want to change it like we want to save it by
# rows then we can add another attribute like

mat3 = matrix(c(1,3,5,7,9,11), nrow = 3, ncol = 2, byrow = T)
print(mat3)
# so now this will print 1,3 in first row 5,7 in 2nd row
# and then 9,11 in third row.

# printing the values according to indexes

print(mat3[1,2]) # it will show the value which is present
# just the concept of matrices 
print(mat3[3,2]) # this will print the number which is present at
# 3rd row and 2 column

# ----------------------------------------------------

# Array : 
# it is multi dimensional homegenous data structure
# so the main difference between the array and the matrix is
# that the matrix is 2 dimensional while the array is multi
# dimensional homogenour data struc
# or we can say that there is more than one matrx present
# 
#
#
#

vec11 = c(1, 2, 3, 4, 5, 67)
vec22 = c(8,9,10,11,12,13)
vec33 = c(14,15,16,17,18)

arr1 =   array(c(vec11, vec22, vec33), dim= c(2,3,2))
print(arr1)
# so the dimension basically means that we will have
# 2 rows and 3 columns in both of the 2 matrices
# but if we write 
# array(c(vec11, vec22), dim= c(3, 2, 2))
# this will make 3 rows 2 columns in both of the 2 matrices


vec11 = c(1, 2, 3, 4, 5, 6)
vec22 = c(8,9,10,11,12,13)
vec33 = c(14,15,16,17,18,19)

arr1 =   array(c(vec11, vec22, vec33), dim= c(2,3,3))
print(arr1)

print(arr1[2,3,3]) # this will print value at 2nd row 3rd column
# of the third matric inside arr1
# so this means that we need 2 rows 3 columns in all of the 3
# matrices
# so all we can change with our priority

# we can also extract individual values like lists etc


vec11 = c(1, 2, 3, 4, 5, 6,20,21,22)
vec22 = c(8,9,10,11,12,13,23,24,25)
vec33 = c(14,15,16,17,18,19,26,17,18)

arr2 = array(c(vec11,vec22,vec33), dim = c(3,3,3))
print(arr2)

# -------------------------------------------------------

# Factor :

# factor is v imp in builting machine learning models
# so when we are implementing machine learning models 
# the machine learning models do not uderstand the character
# and the string etc they should be in number form so this is use 
# like for eg we have color = c('green', 'blue', 'red')
# so now they are character literal so in machine learning
# they do not understand so if we want to change it to 
# categorical factor then we can use as.factor()
# so now this will change to levels i-e level0, level1 and level2

color = c('green', 'blue', 'red')
color1 =  as.factor(color)
print(color1)

# ----------------------------------------------------------
# DATA FRAME : 

# so the data frame has hetrogenous 2 dimansional values
# it works in rows and columns so like below we have 
# fruit_name so this will be tne name of the column while the 
# values inside that will act as rows like 'apple' etc
# so below has 2 columns and both of the column has 3 rows
# 3 names and 3 prices
# os if we want to extract a sinle column in the data frame 
# then we can use $ like 
# fruit_details$fruit_name
# fruit_details$fruit_price


fruit_details = data.frame(fruit_name = c('apple','banana','mango'),
                           fruit_price = c(10,20,30))
print(fruit_details)
print(fruit_details$fruit_name)
print(fruit_details$fruit_price)


# ----------------------------

# INBULT FUNCTIONS :

# in order to view any data set we can use view()
# in R the iris data set is inbuilt so directly we can 
# view it


print(View(iris))
print(str(iris)) # (structure)this is just like shape in python
print(head(iris))
print(tail(iris))
print(head(iris, 4)) # will show first 4 record

print(table(iris$Species)) # will count how many species and 
# how many number of speicies :(


print(max(iris$Sepal.Length)) # will print max value in sepal.length
print(min(iris$Sepal.Length))

print(min(iris$Sepal.Width))
print(max(iris$Sepal.Width))

print(mean(iris$Sepal.Length))
print(mean(iris$Sepal.Width))    # here mean is average

print(range(iris$Sepal.Length)) # give range high val and low val

# -----------------------------------------------


# Decision Making Statements :

if(iris$Sepal.Length[1]>4){
    print("Yes the value is greater")
}else {
    print("No the value is smaller")
}
# this means that check the 1st value of the sepal.length
# weather it is greater than 4 or not.

# ----------------------------------------------

# Looping Statements : 

# For loop, while loop

vec44 = 1:9
for(i in vec44){
    print(i)
}

for (i in vec44) {
    print(i+5)
}


i = 1
while (i<10) {
    print(i*2)
    i = i+1
}

# --------------------------------

# user defined function :


add =  function(x){
    return(x+5)
}

print(add(5))



