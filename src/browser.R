#Demo of browser()

#A dummy, useless function. Multiplies all columns of the input data frame by 
#some constant
someotherfunc<-function(df_inp, k)
{
  #browser(text="Second caller") 
  return(df_inp*k)
}

#Does some operation on the input data frame
somefunc<-function(someparam)
{
  #Do some work
  #browser(text="First caller")
  print(sqrt(someotherfunc(someparam,10)))
  print(summary(someparam))

}

#Make up some data
a<-rnorm(20)
b<-rnorm(20)
c<-rnorm(20)

#Now introdue some NaNs so that we can make the stuff fail

a[11]<-NaN
b[3]<-NaN
c[17]<-NaN


df<-data.frame(a,b,c)
#trace(somefunc, quote(if(any(is.nan(as.matrix(df)))) {browser()} ))
      
somefunc(df)



