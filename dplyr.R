install.packages("dplyr")
library(dplyr)
flights <- read.csv('C:\Users\LAXMAN\Downloads\EastWestAirlines(1).xlxs')
train <- read.csv("E:/ExcelR/train.csv")
train
view(train)
head(train)
tail(train)
glimpse(train)
select(train, PassengerId, Cabin, Embarked)
filter(train, Survived==0, Pclass==2, SibSp==1)
filter(train, Parch==0 | Parch==1)
train %>%
  select(Fare, Embarked) %>%
  filter(Fare>10)
train %>%
  select(Fare , Embarked) %>%
  arrange(Fare)
train %>%
  group_by(Pclass) %>%
  summarise(avg_age = mean(Age, na.rm=TRUE))
train %>%
  group_by(Cabin, Embarked) %>%
  summarise(passenger_count=n()) %>%
  arrange(desc(passenger_count))
data()
airquality <- datasets::airquality
head(airquality,8)
tail(airquality,3)
airquality[4,c(1:4)]
df <- airquality[, -6]
air <- df[-1,]
summary(airquality)
summary(airquality[,1])
summary(airquality$Ozone)
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Wind, type = "b")
plot(airquality$Ozone, xlab = 'No of Instances', ylab = 'Ozone Concentration', 
     main = 'Ozone levels in NY city', col = 'blue')
barplot(airquality$Ozone, ylab = 'ozone levles', main = 'ozone concentration in air',
        col = 'red', horiz = T, axes = F)
boxplot(airquality$Wind)
hist(airquality$Ozone, xlab = 'ozone levels', col = 'blue')
boxplot(airquality[,1:4], main = 'multiple')
e_quakes<-datasets::quakes
