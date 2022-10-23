library(ggplot2)
library(ggthemes)
library(dplyr)

#------load the data set

data("chickwts")

#---calculate means of your treatment groups

mean_data<-group_by(chickwts,feed) %>%
  summarise(weight_mean=mean(weight), sd=sd(weight)) %>%
  arrange(desc(weight_mean))

tibble(mean_data)
View(mean_data)

ggplot(data=mean_data,aes(x=feed,y=weight_mean)) +
  geom_bar(stat="identity", position =position_dodge(0.8)) +
  scale_fill_manual(values=c("red", "blue"))+
  theme_bw()

#-------------flipping the coordinate------------

ggplot(data=mean_data,aes(x=feed,y=weight_mean), color=feed) +
  geom_bar(stat="identity", position = position_stack(reverse=TRUE)) + 
  guides(fill = guide_legend(reverse=TRUE))+
#  coord_flip()+
  theme_bw()


#--------Color full Bar chart-------------       
       
ggplot(data=mean_data,aes(x=feed,y=weight_mean, fill=feed)) +
  geom_col() +
    theme(legend.position="none")+
  labs(title="Bar Graph",subtitle= "All feed categories ",x ="Feed Information",  y=" Wight Information") +
    theme_base()
    ggsave("bar2.jpg")
    
