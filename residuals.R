z=residuals(modelp3)
plot(t,z,type='h',col="darkgreen",xlab="week",ylab="|residual|",main="residual plot")
plot(fitted(modelp3),abs(z),type='h',col="darkred",xlab="fitted",ylab="|residual|",main="residual plot")

plot(t[-n],diff(z)->dz,type='l',lwd=.8,col="darkgrey",,xlab="week",ylab="del(residual)",main="first difference of residuals over time")
abline(h=mean(dz),col="red")
mtext("mean line",side=4,line=-1,cex=.85,col="red")

plot(t[-n],((dz-mean(dz))),type='h',col="darkred",,xlab="week",ylab="del(residual)-bias",main="adjusted first diff. of residuals over time")
plot(t[-n],abs((dz-mean(dz))),type='h',col="darkred",,xlab="week",ylab="|del(residual)-bias|",main="adjusted first diff. of residuals over time")

estm_z= (z+mean(dz))[-n] # estimated z1 is based on z0 ...,zn is based on zn-1  