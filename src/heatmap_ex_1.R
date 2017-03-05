#Creating heatmaps with the base package

#Simple example:
teeth<-read.csv("heat_map_ex_1.csv")
#Combine date and time to create row labels
teeth[2]<-paste(teeth$Date,teeth$Time)
#Drop the Date column - since we already have datetime
teeth<-teeth[-1]
colnames(teeth)<-c("datetime","duration","intensity")
#Order by intensity. Why are we doing this ? 
#This would make it easier to visualise colour changes
#from high to low intensity
teeth<-teeth[order(teeth$intensity, decreasing=T),]
head(teeth)
#Create heatmap
#First label the rows with date time for ease of display
row.names(teeth)<-teeth$datetime
#Create heatmap
heatmap(data.matrix(subset(teeth,select=c(duration,intensity))), scale="column",Rowv=NA,Colv=NA,col=rev(heat.colors(256)),cexCol=1, cexRow=0.7)
