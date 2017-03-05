#Example to illustrate use of the plyr package

require(plyr)

df<-read.csv("plyr_ex_1.csv")
df

#Brute force - for loop
players=levels(df$Player)
for (i in 1:length(players))
{
  the_player_rec<-df[df$Player==players[i],]
  cat(players[i],mean(the_player_rec$Goals), sep=" ")
  cat("\n")
}

#Base R package - split and apply
lapply(split(df,df$Player),function(y){mean(y$Goals)})

#ddply

ddply(df,"Player",function(y){mean(y$Goals)})

ddply(df,"Player",function(y){c(AV_Goals=mean(y$Goals), AV_PAsses=mean(y$Passes), AV_Assists=mean(y$Assists))})

ddply(df,"Player",summarise, mean(Goals))
ddply(df,"Player",summarise, AV_Goals=mean(Goals),AV_Passes=mean(Passes), AV_Assists=mean(Assists))

ddply(df,"Player", function(y){each(mean, median,sd, range)(y$Goals)})

#Add 'calculated field'
ddply(df,"Player", transform, Matches=length(Player)) 

#How many rows get passed to the function ? 
ddply(df,"Player",function(y) nrow(y))
