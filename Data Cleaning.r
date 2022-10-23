library(tidyverse)

data("starwars")

View(starwars)

# How to identify the variable types

glimpse(starwars)
class(starwars$gender)
unique(starwars$gender)

# select the variables

starwars%>%
  select(name,height,ends_with("color")) %>%
  names()


