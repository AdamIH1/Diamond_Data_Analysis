          #Diamonds Data Set Analysis: 2017
# Data is from an open sourse site kaggle (https://www.kaggle.com/shivam2503/diamonds)
# Data set has five variables: carat, price, cut, color, and clarity.
# The variable carat is the weight of a diamond. 
# The variable price represnts the cost of a diamond in US dollars.
# The variable cut represents the quality of a diamond as fair,good, very good, 
# The variable color represents the diamond color ranked from J(worst) D(best).
# The variable clarity represents how clear a diamond is ranked from I1(worst), 
# SI1,SI2,VS1,VS2,VVS1,VVS2, and IF(best).
 
diamonds <- read.csv("~/Downloads/diamonds.csv")
barplot(table(diamonds$color), #bar char of qualitative
  xlab = "Color",
  ylab = "Frequency of color",
  main = "Frequency of different colored diamonds",
  col = 'red')
data(diamonds)

hist((diamonds$price), # hist quantitative 
  xlab = "Price in US dollars",
  ylab = "Frequency of prices",
  main = "Frequency of different diamond prices in US dollars",
  col='green')
hist((diamonds$carat), # hist relative quantitative 
     xlab = "Weight of diamond",
     ylab = "Frequency of weight",
     main = "Frequency of different diamond weights",
     col= 'blue') 
mean(diamonds$price)
median(diamonds$price)
sd(diamonds$price)
var(diamonds$price)
range(diamonds$price)
quantile(diamonds$price,0.25)
quantile(diamonds$price,0.75)
IQR(diamonds$price)
nrow(diamonds)
boxplot((diamonds$carat), # boxplot quantitative
  ylab = "weight of diamond",
  xlab = "frequency of weight",
  main = "frequency of different diamond weights",
  col= 'yellow')
boxplot((diamonds$price~diamonds$clarity), # boxplot quantitative
  xlab = "clarity of diamonds",
  ylab = "price in US dollars",
  main = "price vs clarity boxplot",
  col= 'orange')
plot((diamonds$price~diamonds$carat),
  xlab = "weight of diamond in carats",
  ylab = "price in US dollars",
  main = "price vs carat boxplot")

t.test(diamonds$price, mu= 4000,alternative = 'less' )


aov.ex1 = aov(price~cut,data=diamonds)  #do the analysis of variance
summary(aov.ex1)                                    #show the summary table
print(model.tables(aov.ex1,"means"),digits=3)       #report

# regression 
plot(price~carat, data = diamonds,
     main = "price vs weight diamonds",
     xlab = "weight of diamonds",
     ylab = "price in US dollars",
     pch = 20)


Model_PC = lm(price~carat, dat = diamonds)
abline(Model_PC)
summary(Model_PC)
cor(diamonds$price, diamonds$carat)

