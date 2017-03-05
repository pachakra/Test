#Simple applications of apply()
#First create a matrix on which to do R&D. 
#We will add 10 to each element of a matrix

M<-matrix(seq(1,12), nrow=4,ncol=3)
M
#By rows
apply(M, 1, sum, 10)

#Check if this is correct
c(sum(M[1,],10), sum(M[2,],10), sum(M[3,],10),sum(M[4,],10))
#By columns
apply(M,2, sum, 10)

#By rows and columns
apply(M, c(1,2), sum, 10)

#Different behaviour with sqrt
#By rows
apply(M, 1, sqrt)

#By columns
apply(M,2, sqrt)

#By rows and columns
apply(M, c(1,2), sqrt)

