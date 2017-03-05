#Creating heatmaps with the base package

#Simple example:
states<-read.csv("heat_map_ex_2.csv")
head(states)
#Create heatmap
#First label the rows for ease of display
row.names(states)<-states$name
#Create heatmap
#Colv=NA shows only the row dendrogram
hm<-heatmap(data.matrix(subset(states, select=c(5:7))),scale="column",Colv=NA,col=rev(heat.colors(256)),cexCol=1, cexRow=0.7)

hm<-heatmap(data.matrix(subset(states, select=c(5:7))),scale="column",distfun=function(x) dist(x, method="manhattan"), Colv=NA,col=rev(heat.colors(256)),cexCol=1, cexRow=0.7)

