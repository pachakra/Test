a=rnorm(5)
b=rnorm(5)
c=rnorm(5)

d=c(a,b,c)
e=list(a,b,c)
d
e
e[1]
mean(e[1])
e[[1]]
mean(e[[1]])
class(e[1])
class(e[[1]])
d[1]
e[1]
d[[1]]
e[[1]] #First element of list of lists
e[[2]][1] #First element of first element of lists of lists
is.vector(d)
is.vector(e)
is.list(d)
is.list(e)

ee=e
names(ee)=c("Tom", "Dick", "Harry")
ee[[1]]
ee$Tom


f=e
g=list(f,e)
g
g[[1]]
g[[1]][[2]]
g[[1]][[2]][3]
