mean(Q7$Points)
mean(Q7$Score)
mean(Q7$Weigh)

0.015+0.20+0.65+.005+0.01+0.120
(0.015)+(4*.20)+(3*0.65)+(5*0.005)+(6*0.01)+(2*0.120)
  summary(Q7)
mode(Q7$Points)
mode(Q7$Score)
mode(Q7$Weigh)
var(Q7$Points)

var(Q7$Score)
var(Q7$Weigh)
range(Q7$Points)
range(Q7$Score)
range(Q7$Weigh)
4.93-2.76
5.424-1.513
22.9-14.5
hist(Q7$Points)
hist(Q7$Score)
hist(Q7$Weigh)
glimpse(Cars)
mpg<-Cars$MPG
mpg
filter(Cars, MPG>38)
filter(Cars, MPG<40)
Cars%>%
  filter(MPG<50, MPG>20)
hist(Cars$MPG)
line(Cars$MPG)
barplot(Cars$MPG)
sd(Cars$MPG)
skew(Cars$MPG)


#09/02/22
m=T
n=F
class(m)
class(n)

x = TRUE
y = 'TRUE'
class(x)
class(y)

a = 5+9i;
class(a)

a = 'Data Science'
class(a)


airquality<-datasets::airquality
#top 10 adn last 10 rows
head(airquality,10)
tail(airquality,10)

#columns
airquality[,c(1,2)]
df<-airquality[,-6]
df1<-airquality[-153,]

summary(airquality$Ozone)
airquality$Ozone
summary(airquality)


plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type='p')
plot(airquality)
#points & lines
plot(airquality$Wind,type='l')
plot(airquality$Ozone, xlab='Ozone Concentration',
     ylab='No of Instances', main='Ozone levels in NY city',
     col='blue')
#Horizontal barplot
barplot(airquality$Ozone, main='Ozone concentration', 
        ylab='ozone levels', col='blue', horiz=F, axes = T)
hist(airquality$Solar.R)
hist(airquality$Solar.R, main = ' Solar Radiation volumes in air',
     xlab = 'Solar Radiation', col= 'blue')
#Boxplot
boxplot(airquality$Wind, main = 'Boxplot')
boxplot.stats(airquality$Wind)$out
#Multiple Boxplot
boxplot(airquality[,1:4], main = 'Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 0 - yes, n- no 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty='o')
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')


e_quakes<-datasets::quakes
#top 10 adn last 10 rows
head(e_quakes,10)
tail(e_quakes,10)

#columns
e_quakes[,c(1,2)]
df<-e_quakes[,-4]
df1<-e_quakes[-153,]

summary(e_quakes$mag)
e_quakes$mag
summary(e_quakes)


plot(e_quakes$depth)
plot(e_quakes$depth, e_quakes$mag, type='p')
plot(e_quakes)
#points & lines
plot(e_quakes$depth,type='l')
plot(e_quakes$mag, xlab='Magnitude',
     ylab='No of Instances', main='Magnitude of quake',
     col='blue')
#Horizontal barplot
barplot(e_quakes$depth, main='Depth of quake', 
        ylab='Depth', col='blue', horiz=F, axes = T)
hist(e_quakes$mag)
hist(e_quakes$mag, main = ' Magnitude of quakes',
     xlab = 'Magnitude', col= 'blue')
#Boxplot
boxplot(e_quakes$mag, main = 'Boxplot')
boxplot.stats(e_quakes$mag)$out
#Multiple Boxplot
boxplot(e_quakes[,(2:3)], main = 'Multiple')

sd(e_quakes$depth)
var(e_quakes$depth)
sd(airquality$Ozone, na.rm = T)
var(airquality$Ozone, na.rm = T)
skewness(e_quakes$depth)
kurtosis(e_quakes$depth)
