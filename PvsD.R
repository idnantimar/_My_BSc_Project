plot(p,d,col="grey",xlab="petrol",ylab="diesel",main="petrol vs diesel price(p./liter) for fixed time ")
abline(lm(d~p)->donp,col="red",lwd=2)
mtext(paste("d= ",round(coef(lm(d~p))[1],3)," +",round(coef(lm(d~p))[2],3),"p"),side=1,line=-2,adj=.2,col="darkred",cex=.8)
