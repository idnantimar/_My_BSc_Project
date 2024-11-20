plot(t,p,type="l",lwd=1.5,xlab="weeks",ylab="p./liter",main="cycles in petrol price data",col="blue")
abline(v=c(291,660,885),col="grey",lty=2)
mtext("week 0-290",side=3,line=-2,adj=0.1,col="darkgrey",cex=0.75)
mtext("week 291-659",side=3,line=-2,adj=0.4,col="darkgrey",cex=0.75)
mtext("week 660-884",side=1,line=-2,adj=0.82,col="darkgrey",cex=0.75)
mtext("week 885- ",side=1,line=-2,adj=0.95,col="darkgrey",cex=0.75)


