#-------------Data Wrangling and Transformation

install.packages("tidyverse")
install.packages("tidyr")

library(tidyverse)
library(tidyr)


x<-mtcars
help("summarise")

summarise(x,average=mean(mpg))
count(x,mpg)

# A summary applied to ungrouped tbl returns a single row

View(mtcars)
mtcars %>%
  summarise(meanValue = mean(disp), n = n())

# dplyr 1.0.0 allows to summarise to more than one value:
mtcars %>%
  group_by(cyl) %>%
  summarise(qs = quantile(disp, c(0.25, 0.75)), prob = c(0.25, 0.75))

#filter the data

s<-filter(mtcars,mpg>20)
View(s)

s2<-distinct(mtcars,gear)

View(s2)

#----------slice the rows

s3<-slice(mtcars, 12:15)
View(s3)

#----HOW TO GET 50% of data

s4<- slice_min(mtcars,mpg, prop = 1)

View(s4)


s5<-slice_head(mtcars, n=10)
View(s5)

#---------arrange the data

arrange(mtcars,mpg)
arrange(mtcars,desc(mpg))

#----------How to add new rows

cars<-add_row(cars,dist=9)
View(cars)


# replacing null values with 0


cars[is.nan(speed)]=0


#--------------select the specific records------

w<-select(mtcars,mpg,wt)

View(w)

#--------for all variables calculate mean

x3<-summarise(mtcars,across(everything(),mean))

View(x3)


# How to save the record

write.csv(w, file = "saMean.csv")




