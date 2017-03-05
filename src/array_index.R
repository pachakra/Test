#Options for array indexing

###############
###1d array####
###############
a<-array(1:20)
a
#positive index
a[0]
a[1]
a[1:2]
a[c(1,4,7)]
a[c(1,4,77)]


#Negative index
a[-1] #Drop element 1
a[-1:-4] #Drop elements 1 to 4
a[c(-1,-3, -5)] #Drop elements 1,3 and 5

#Logical indexing - just picks the TRUE values
a[a%%2==0] #Find even numbers
bi<-array(rep(c(T,F),10))
bi
a[bi]
a[(c(T,F))]
a[(c(T,F,T))]

#Index with an array
i <- array(c(1:4,3:1), dim=c(3,2))
i
a[i]

###############
###2d array####
###############

aa<-a #Copy into another variable
dim(aa)<-c(4,5) #Nead little trick to convert a linear array into 2D 4x5 array
aa

#positive index - treats array as 1D
aa[1]
aa[1:2]
aa[c(1,4,7)]

#Positive index - proper 2D subscripting
aa[1,1]
aa[1,] #First row
aa[,1] #First column
aa[,] #Entire array
aa[1:3,] #Rows 1 to 3
aa[,2:5] #Columns 2 to 5
aa[c(1,4), ] #Rows 1 and 4
aa[,c(1,4)] #Columns 1 and 4
 
#Negative index
aa[-1]
aa[-1:-2]
aa[c(-1,-3, -5)]

#Negative index - 2D subscripts
aa[-1,] #Without first row
aa[,-1] #Without first column
aa[-1:-3,] #Without first to the fourth rows
aa[,-1:-3] #WIthout the first to the fourth columns
aa[c(-1,-3, -4),] #WIthout the first , third and fourth rows
aa[,c(-1,-3, -4)] #WIthout the first , third and fourth columns

#Logical indexing - just picks the TRUE values
bi<-array(rep(c(T,F),10), dim=c(4,5))
bi
aa[bi]

#Index with an array
aa
ii <- array(c(1,2,3,4,1,2,3,4), dim=c(4,2))
ii
aa[ii]
aa[ii]<-1000
aa


#Use names as indices
sa<-a[1:5] #Create a subset of our original 20 element array
names(sa)<-c("one", "two", "three", "four", "five")
sa[c("one", "five")]

