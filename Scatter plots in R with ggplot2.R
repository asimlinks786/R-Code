

library(ggplot2)
data("cars")
View(cars)

#-------se stands for standard error-----------

ggplot(data=cars, aes(x=speed, y=dist))+
  geom_point()+
  geom_smooth(method = "lm", se=F)


#------------scatter plot with multilines----------

data("orange")
data()
data("Orange")
View(Orange)

ggplot(Orange, aes(age,circumference, color=Tree))+
  geom_point(size=4, shape=19)+
  geom_line(type=1,size=1)

#----------seperate by shape---------------



ggplot(Orange, aes(age,circumference, color=Tree))+
  geom_point(size=9, shape=19, aes(shape=Tree))+
  geom_line(type=1, size=1)

ggplot(Orange, aes(age,circumference, color=Tree))+
  geom_point(size=9, shape=19, aes(shape=Tree))+
  geom_line(aes(linetype=Tree), size=1)+
  labs(x="All Age", y="Circumference", title="Main Graph")
  ggsave("scatter.pdf")

  #--------------bubble plot-----------------
  
  library(viridis)
  data("quakes")
View(quakes)  

#-------------selecting recording from 1 to 1000 with interval of 10 records


q<-quakes[seq(from=1, to= 1000, by=10),]

View(q)

#-----total numbers of rows? GUIDES WILL remove the size
# APPLY COLOR PALATE WITH VIRIDUS

nrow(q)

ggplot(data=q, aes(lat,long), color=mag)+
  geom_point(aes(size=mag, color=mag))+
  guides(size=F)+
  scale_colour_viridis_b(option="B")+
  scale_size_continuous(range=c(1,9))+
  labs(x="Latitude Information", y="Longitude", title="Bubble Graph")
  ggsave("scatter.jpg")


# Jitter Plot------------
  
  data("diamonds")
nrow(diamonds)
View(diamonds)

d1<-diamonds[seq(from=1, to=49000, by=10),]

nrow(d1)
View(d1)

ggplot(data=d1, aes(x=cut,y=price, color=cut))+ geom_jitter()+
  labs(x="All Categories", y="Total Price", title="Jitter Graph Presentation")
  ggsave("jiter.png")


