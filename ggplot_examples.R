# ggplot leanring script
# Ian Kaufer ikaufer@email.arizona.edu
# 22-Feb 2015

install.packages("ggplot2", dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")
library("reshape2")
library("ggthemes")
library("plyr")

myplot <- ggplot(data = iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) + 
  geom_point(aes(shape=Species),size=4)
myplot

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
dim(diamonds)
dim(diamonds)[1]

ggplot(d2, aes(carat,price, color=color)) + geom_point()

library("MASS")
ggplot(birthwt, aes(factor(race),bwt)) + geom_boxplot()

summary(myplot)
ggplot(iris,aes(Sepal.Length, Sepal.Width, color=Species)) + 
  geom_point() + 
  facet_grid(Species~.)
library(RColorBrewer)
display.brewer.all()

df <- melt(iris, id.vars="Species")
barGraph <- ggplot(df,aes(Species, value, fill=variable)) + 
  geom_bar(stat="identity",position="dodge") + 
  scale_color_manual(values = c("red","red","red"))
barGraph

#scales
ggplot(birthwt,aes(factor(race),bwt))+
  geom_boxplot(width=.2)+
  scale_y_continuous(labels=(paste0))

#coordinates


#done with lecture

















