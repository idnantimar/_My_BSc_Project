modelp1=lm(p~t)#linear trend
summary(modelp1)
modelp2=lm(p~poly(t,2,raw=T))#quadratic trend
summary(modelp2)
modelp3=lm(p~poly(t,3,raw=T))#cubic trend
summary(modelp3)
modelp4=lm(p~poly(t,4,raw=T))#4th degree polynomial trend
summary(modelp4)


plot(t,p,type="l",xlab="weeks",ylab="p./liter",main="linear trend line for petrol price")
abline(modelp1,col="blue")
mtext(paste("p= ",round(coef(modelp1)[1],3)," +",round(coef(modelp1)[2],3),"t"),side=1,line=-2,adj=.2,col="darkgrey",cex=.95)

plot(t,p,type="l",xlab="weeks",ylab="p./liter",main="various trend-cycle line for petrol price")
lines(t,fitted(modelp2),col="green")
lines(t,fitted(modelp3),col="blue",lwd=2)
lines(t,fitted(modelp4),col="red")
legend("topleft",c("quadratic","cubic","4th degree"),col=c("green","blue","red"),lwd=1)

plot(t,residuals(modelp3),type="h",xlab="week",ylab="residuals",
     main="residual plot of cubic trend",col="darkgreen")
plot(fitted(modelp3),abs(residuals(modelp3)),type="h",xlab="fitted",ylab="| residuals |",
     main="fitted vs residual",col="darkgreen")


