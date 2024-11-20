library("readxl")
setwd("F:\\PROJECT WORK _OB") #change directory as per convenience 
pricedata=data.frame(read_excel("fuel prices time series.xlsx"))


summary(pricedata[,-1])
boxplot(pricedata[,-1],names=c("petrol","diesel"),ylab="p./liter",main="box-plot for petrol and diesel price data")
n=length(pricedata[[1]]) #no. of obs
t=0:(n-1)  
p=pricedata[[2]] #petrol price
d=pricedata[[3]] #diesel price
var(p)
var(d)
cor(p,d)

plot(t,p,type="l",col="blue",xlab="weeks",ylab="p./liter",main="petrol price over time")
lines(t,d,col="red")
mtext("time: origin= 9june,2003 ",side=1,line=-3,adj=.8,col="darkgrey",cex=.8)
mtext("                unit=1week ",side=1,line=-2,adj=.8,col="darkgrey",cex=.8)
legend("topleft",c("petrol","diesel"),col=c("blue","red"),lwd=1)