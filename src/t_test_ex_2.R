#T-test

#Tigers have on an average 55 black stripes. 
#Generate two distributions using runif(). The first one 
#will generate between the ranges 45 and 60
#The second one will generate between the ranges 50 and 65

first<-runif(30,45,60)  
second<-runif(30,40,65)
df_tiger<-data.frame("A_Stripes"=first,"B_Stripes"=second)
write.csv(df_tiger,"t_test_ex_2.csv")

#The demo part
df_tiger<-read.csv("t_test_ex_2.csv")
head(df_tiger)
summary(df_tiger)
park_A<-df_tiger$A_Stripes
park_B<-df_tiger$B_Stripes

num_breaks=10
p1<-hist(park_A, plot=FALSE, breaks=num_breaks)
p2<-hist(park_B, plot=FALSE,breaks=num_breaks)
plot(p1, col="red")
plot(p2, col=rgb(0,0,1,0.5), add=T)

t.test(park_A,park_B, var.equal=FALSE)
require(lsr)
cohensD(park_A, park_B, method="unequal")


#Code to demo two distributions for T-Test

pa<-hist(rnorm(10000000),breaks=500, plot=FALSE)
pb<-hist(rnorm(10000000)+1,breaks=500, plot=FALSE)
plot(pa, col="red")
plot(pb, col=rgb(0,0,1,0.5), add=T)