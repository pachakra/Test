#Create 10 random numbers
a=rnorm(10)
b=rnorm(10)
a
b

#If you are trying to compare element-by-element - it won't work. 
#R will just compare the first two elements
if(a>b) "A" else "B"

#ifelse to the rescue
ifelse(a>b, "A", "B") 

#World Cup data
wcdata<-read.csv("D:\\RBlog\\Code\\ifelse_ex_1.csv")
wcdata
#Calculate the mean for a team and attach to a player
wcdata$Avg.Goals.Team<-ifelse(wcdata$Team=='GER', mean(wcdata$Goals[wcdata$Team=='GER']),
                              mean(wcdata$Goals[wcdata$Team=='ARG']))
