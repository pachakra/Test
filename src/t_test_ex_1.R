#T-test

#We are trying to simulate taking of 20 samples 
ideal<-rep(50,20) #Create an array of 50 (ideal weight)
delta<-rnorm(20)  #Create array of random numbers
measured<-ideal-delta #Subtract to simulate real-life variations
measured
summary(measured)

t.test(measured,mu=50)
