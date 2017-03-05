#Simple applications of lapply() and other similar functions
#Create a data frame
df<-data.frame(a=c(1:10), b=c(21:30), c=c(41:50))
df

#lapply
lapply(df,sum, 10)
sum(df$a, 10)
lapply(df$a, sum)

lapply(df,quantile)

