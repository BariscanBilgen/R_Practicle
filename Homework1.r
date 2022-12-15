data("mtcars")
data("iris")
data("morley")
data("Puromycin")
library(dplyr)
library(tidyverse)
library(datasets)
library(plyr)
require(tidyverse)

# df_car ' a mtcarsı atadım araba isimlerine ulaşmak için
df_car <- data.frame(arac=rownames(mtcars), mtcars, stringsAsFactors = FALSE)

#soru 1
df_car %>% select(arac,mpg) %>% apply(2,max) 

#soru 2
df_car %>% filter(arac == "Ferrari Dino") %>% select(hp)

#soru 3
median(df_car$wt)
df_car  %>%  select(wt) %>% apply(2,median) 


#soru 4
morley %>%  select(Speed) %>% apply(2,median) 

#soru 5
morley %>% mutate(gercek = Speed+299000 ) %>% head()


#soru 6 
hasta = Puromycin %>% filter(state == "treated" ) %>% select(state)
hasta.degil=Puromycin %>% filter(state == "untreated" ) %>% select(state)
count(hasta)/count(hasta.degil)


#soru 7
mean(iris$Petal.Length)
iris  %>% select(Species,Petal.Length) %>% apply(2,max)

#soru 8
iris %>% filter(Species == "setosa")  %>% select(Sepal.Length,Sepal.Width,Petal.Length,Petal.Width) %>% apply(2,mean) 
iris %>% filter(Species == "virginica")  %>% select(Sepal.Length,Sepal.Width,Petal.Length,Petal.Width) %>% apply(2,mean) 
iris %>% filter(Species == "versicolor")  %>% select(Sepal.Length,Sepal.Width,Petal.Length,Petal.Width) %>% apply(2,mean) 