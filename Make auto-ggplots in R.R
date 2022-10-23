#Install following packages----

devtools::install_github("JLSteenwyk/ggpubfigs")
install.packages("readxl")
install.packages("tidyverse")
install.packages("esquisse")
install.packages("hrbthemes")
install.packages("devtools")




library(readxl)
library(tidyverse)
library(ggpubfigs)
library(esquisse)
library(hrbrthemes)
library(devtools)




#-------------Import Data Set in R

data("midwest")
data("iris")
data("mtcars")

#-------the magic

library(ggplot2)


#------------run Esquisser console-------------
esquisser()


#------------------------Copy script here=======

ggplot(iris) +
 aes(x = Species, fill = Species, weight = Sepal.Length) +
 geom_bar() +
 scale_fill_manual(values = c(setosa = "#440154", 
versicolor = "#12D4CB", virginica = "#03F22F")) +
 labs(title = "Iris Data Set Visualization") +
 theme_bw() +
 theme(plot.title = element_text(size = 14L, face = "bold", hjust = 0.5))




