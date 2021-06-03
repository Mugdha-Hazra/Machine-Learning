# comments
# to run a command press Control + Enter.
# to clear the console press Control + l or broom .

# To create and assign a variable
# use <- (assignment operator)
# the right side window will show
#you all the variables
# and their values associated.

print("Hello world")
2+5
x <- 2
x <- 3
x # print the value

# to store multiple values
#use concatenation operator c(value1,val2,...)
# array of numbers containing 1-5.
y<-c(1,2,3,4,5)
# for serial values u can use slicing
# create a variables to store values like array.
z<-1:10

# for storing same values to different variable
m<-n<-1:10
# created 2 variables m and n both store array.

# for adding each element of x with of y
# like a[1]=x[1]+y[1],a[2]=x[2]+y[2]...
# also we can multiply.
a1<-m+n
a2<-m*n

# to see  all the values of the work space
ls()

# delete one variable from teh work space use rm(x) or remove(x)
rm(a)
remove(x)

# to remove all the variables from the workspace 
# use command rm(list = ls())
rm(list=ls())
#workspace is empty now

# to use packeges in the rigt down 
# clicks the packages section and select the package
#it will itself get installed.

# packages
# http://cran.r-project.org/web/views/
# http://cran.stat.ucla.edu/web/packages/available_packages_by_nav
# http://crantastic.org

# to open any link 
browseURL("http://cran.r-project.org/web/views/")
# to show all the available packages
library()
# to search currently loaded packages
search()

# how to add data on which we want to do analysis
# 3 ways:
# 1. Use R's buildin datasets
#2. enter data manualyy and store it
#3.Import the data from csv file or text file.

# method 1
data() # show all inbuilt library
library(help="datasets") #documentation of all available packages
?iris # tell us all about iris 
# it has same data of flowers contains petal len sepal le and all

str(iris) #structure of iris
# has 150 rows and 5 columns

# to view whole iris dataset
iris

#to load the dataset in your workspace
data("iris")
# in the rigt window we can see the iris has got loded in our workspace.


# method 2- Manual data entry

x1<-1:10
x2<-c(2,5,7,4)
x3<-seq(5,50, by=5) #to store number from 5 till 50 by the increment of 5.
x4<-scan() # to input manually ,once u r done press enter twice.

# import data from a csv file or a text file into our work space.
# in text file the delimiter is tab
# that is all the columns are separated by 1 tab
# in csv file the delimiter is , csv=comma separated values.

# to lode the data set in our wok space
# how to insert data from a txt file
Product <- read.table("C:/Users/KIIT/Data-Science-and-ML/ML USING PYTHON AND R/CrashCourseFiles/Product.txt", header = TRUE, sep = "\t")

str(Product)# to know the structure of the product variable

# how to insert data from a csv file.
Customer<- read.csv("C:/Users/KIIT/Data-Science-and-ML/ML USING PYTHON AND R/CrashCourseFiles/Customer.csv", header = TRUE, sep = ",")
# to view the customer details
View(Customer)




















# Creating Bar plot in R

# to find the frequency distribution for region variables

y <- table(Customer$Region)
y
View(y)#to view y in tabular format.
 
# to create a bar plot
barplot(y) #here the height of the bar is giving you the frequency of the particular region.

#parameter of the barplot graph
# 1. soth the barplot in ascendig order
barplot(y[order(y)])#ascending order

barplot(y[order(-y)])#decending order

# 2. to change the orientation of the bar plot in horizontal direction
barplot(y[order(y)],horiz = TRUE)# to make it horinzontal

# 3. to change the colour
barplot(y[order(y)],col = "purple")# for all bar to be same colour.

# 4. for all bars of different colour use concatination c
barplot(y[order(y)],col = c("purple","yellow","pink","orange"))
# also if u want u can also mention the colour number inspite of colour names.
# to see the list of colours available
colors()  

# To remeobethe boundry of the bars
barplot(y[order(y)],col = c("purple","yellow","pink","orange"),border = NA)

# to add a title to the graph
barplot(y[order(y)],col = c("purple","yellow","pink","orange"),main = "Frequencies of regions")

# to use two lines add \n
barplot(y[order(y)],col = c("purple","yellow","pink","orange"),main = "Frequencies of \n regions")

# to lable the x-axis and y-axis
barplot(y[order(y)],col = c("purple","yellow","pink","orange"),main = "Frequencies of \n regions",xlab = "Regions",ylab = "Number of Customers")

# to use the bar plot we have to export the bar plot in terms of pic or pdf
# there is a option in r studio t export


# how to create a histogram in R

# to see the distribution in age variable in different age category

# histogram is a plot which gives us the frequency of each category comming in our data

# to make a histogram of age variable
hist(Customer$Age)

# if we want only few buckets 
hist(Customer$Age, breaks = 5) #here we suggest to give only 5 bars
 
# for manipulating the difference between 2 bars
hist(Customer$Age, breaks = c(0,40,60,100)) #we only created 3 catogery
#here by default histogram will take the frequency density

#for viewing the frequency
hist(Customer$Age, breaks = c(0,40,60,100),freq = TRUE)

# we can change the colour of this distribution also
hist(Customer$Age, breaks = c(0,40,60,100),col="purple")


# for changing the heading of the graph
hist(Customer$Age, breaks = c(0,40,60,100),col="purple",main = "Histogram of Ages")

# once the histograph is created u can export it in pdf or image using the export option.














