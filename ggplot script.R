#----------------loading the data from Excel------------

library(readxl)
x <- read_excel("D:/R Language/ggdata.xlsx")
View(ggdata)

ggplot(x,aes(crop,height))+
  geom_point(size=3)+
  geom_line()



library(tidyverse)


#----------Box plot------------

ggplot(x,aes(crop,height))+
  geom_boxplot()+
  geom_point()+
  geom_point(colour="red", aplha=0.8) #---alpha tranparent

#--------box plot fill color

ggplot(x,aes(crop,height,color=water))+
  geom_boxplot()

ggplot(x,aes(crop,height,fill=water))+  #fill with inside the color
  geom_boxplot()+
  facet_wrap(~fert.type)+
  labs(x="Crop Type", y="Plant Height (cm)", title="Plant Growth")+
  theme_bw()     #-----theme will apply border

ggplot(x,aes(crop,height,fill=water))+  #fill with inside the color
  geom_boxplot()+
  facet_wrap(~fert.type)+
  labs(x="Crop Type", y="Plant Height (cm)", title="Plant Growth")+
  theme_classic() 
  ggsave("gt1.tiff",units ="in",  width=8, height=6, dpi = 300)
  

