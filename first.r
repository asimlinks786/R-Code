head(iris)
summary(iris)
plot(iris)

require(pacman)

pacman::p_load(pacman,dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio, rmarkdown,
               shiny, string, tidyr)

load(datset)

# ----------Loading the internal data sets----------


head(iris)

plot(iris$Species) #---loading the categorial data

plot(iris$Species,iris$Sepal.Length) #---loading the categorial data

plot(iris$Petal.Length, iris$Petal.Width,
     
     col="#cc0000", # Hex code for data lab
     pch=19,
     main="Iris: Petal Length vs Petal Width",
     xlab="Petal Length",
     ylab="Petal Width")

#-------New data set------------

?mtcars
head(mtcars)


#----Lesson for Bar chart-------------

hist(iris$Sepal.Length)

#----------- Histogram by group----------

hist(iris$Petal.Width[iris$Species=="setosa"],
     xlim=c(0,3),
     breaks=9,
     main = "Petal with for setosa",
     xlab = "",
     col="red")


hist(iris$Petal.Width[iris$Species=="versicolor"],
     xlim=c(0,3),
     breaks=9,
     main = "Petal with for setosa",
     xlab = "",
     col="green")

#-------------Restore graph parameters--------------


par(mfrow=c(1,1))

pie(iris$Species,main="All Species Distribution")

View(iris)

#---------Read the data from excel---------


library("readxl")

d<-read_excel("d:\\customer_dbase.xlsx")

View(d)

#-----------------Filter the records---------

d2<-d[d$gender==1,]


View(d2)

d2<-subset(d[d$gender==1 & d$income>100,])

View(d2)

#-----------------Sorting data frames-------------------

d2< d[Order(-d$income),]

View(d2)

#-----------------Statistical Analysis------------------

summary(d)



min(d$income)

max(d$income)

range(d$income)

mean(d$income)

sd(d$income)

var(d$income)

mad(d$income)

quantile(d$income)


median(d$income)


#--------------------Data Visualization Part-----------------


library(ggplot2)

ggplot()+ geom_histogram(data=d, aes(x=income), fill="blue", color="black", bins=30, binwidth = 100)+ facet_grid(d$gender)


#------------------stack histogram---------------------


ggplot()+ geom_histogram(data=d, aes(x=income,fill=gender), color="blue",bins=30, binwidth = 100)




#-------------------create bar chart income vs debit card usage----------------


ggplot(data=d, aes(x=region, y=income, fill=region)) + stat_summary(fun=mean,geom="bar")+ labs(title="New plot title",subtitle= "A subtitle",x ="All Rejion Information",  y=" Income Information") 
       

#-------------------Histogram-------------

hist(d$income)


#----------scatter plot chart---------------

plot(d$income,d$creddebt)

#------------Bar Plot---------------

barplot(d$age)

#------------
