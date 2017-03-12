#Demo of rollapply()
#Copyright pachakra@yahoo.com
#Can be copied with due acknowledgement

require(zoo)
#Simple example
i=1:10
i
rollmean(i, k=3, fill=0, align="left")
rollmean(i, k=3, fill=0, align="center")
rollmean(i, k=3, fill=0, align="right")


#A slightly complicated example
set.seed(10)
price<-rnorm(100)+seq(from=1, to=10.9, by=0.1) #Added a seq to simulate
                                             #a rising time series
plot(price, col="red", type="l", xlab="Day", ylab="Price", pch=19)
points(rollmean(price, k=7, align="left"), type="l", col="blue")
legend("topleft",c("Price", "7 day moving average"), col=c("red", "blue"), pch=19)

#Rollapply. We will use the same price we got above
plot(price, col="red", type="l", xlab="Day", ylab="Price", pch=19)
avg<-rollmean(price, k=7, align="left")
st_devs<-rollapply(price, width=7, FUN=sd,align="left")
upper_lim<-avg+st_devs
lower_lim<-avg-st_devs
points(avg, col="blue", type="l")
points(upper_lim, col="green", type="l")
points(lower_lim, col="green", type="l")

legend("topleft",c("Price", "7 day moving average", "7 day moving std dev"), col=c("red", "blue", "green"), pch=19)


