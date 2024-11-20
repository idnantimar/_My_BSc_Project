estm_p= (fitted(modelp3))[-1] +estm_z
estm_d= coefficients(donp)[1] + estm_p*coefficients(donp)[2]

plot(t,p,main="PETROL PRICE",xlab="week",ylab="p./liter",
     col="red",type="l",lwd=3)
points(t[-1],estm_p,col="blue",lwd=.05)
legend("topleft","actual price",col="red",lwd=1.5)
legend("bottomright","fitted value",col="blue",pch=1)
summary(p[-1]-estm_p)
var(p[-1]-estm_p)
100*mean(abs(p[-1]-estm_p)/p[-1])

summary(d[-1]-estm_d)
var(d[-1]-estm_d)
100*mean(abs(d[-1]-estm_d)/d[-1])
plot(t,d,main="DIESEL PRICE",xlab="week",ylab="p./liter",
     col="blue",type="l",lwd=3)
points(t[-1],estm_d,col="red",lwd=.05)
legend("topleft","actual price",col="blue",lwd=1.5)
legend("bottomright","fitted value",col="red",pch=1)
