#Tracing example

somefunc<-function(x,y,z)
{
  df<-data.frame(sqrt(x),sqrt(y),sqrt(z))
  return(df)
}

#Make up some data
set.seed(100)
a<-rnorm(20)
b<-rnorm(20)
c<-rnorm(20)

#Now introdue some NaNs so that we can make the stuff fail

a[11]<-NaN
b[3]<-NaN
c[17]<-NaN

somefunc(a,b,c)
