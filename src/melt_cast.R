#Examples of melt-ing and cast-ing
require(reshape2)
raw<-read.csv("knitr_ex_1.csv")
head(raw)

mraw<-melt(raw,id.vars=c(1:4,10))
mraw2<-melt(raw,id.vars=c("batsman","side","match", "innings", "how_out"), measure.vars=c("runs", "minutes", "balls_Faced", "fours", "sixes"))
head(mraw)

#Split by batsman and type of variable
by_bat<-split(mraw, list(mraw$batsman, mraw$variable))
by_bat[1]
lapply(by_bat, function(y) mean(y$value))

#Better method - use dcast
dcast(mraw, ...~variable)
dcast(mraw, batsman~variable, mean)

