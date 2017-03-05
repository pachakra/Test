#Random examples of string manipulation utilities 

list_str=c("MY", "random", "list", "of", "STRINGS")

c1=rnorm(20)
c2=rep(c("My","random","string","list"),5)
df=data.frame(c1,c2)

for (i in 1:length(list_str))
{
  print(df[df$c2==list_str[i],])
}

for (i in 1:length(list_str))
{
  #grep(pattern, where_to_search, case_sensitive or not)
  #By default it returns the indices from the factor df$c2
  #which you use to pull the rows from the data frame
  print(df[grep(list_str[i], df$c2, ignore.case=TRUE),]
}

length(character(0)) 
length("")

simple_vec<-c(rnorm(10),rep(c("A","B"),5))
is.vector(simple_vec)
simple_vec

simple_matrix<-matrix(c(rnorm(10),rep(c("A","B"),5)), nrow=5)
is.vector(simple_matrix)
is.matrix(simple_matrix)
simple_matrix

simple_df<-data.frame(MyDecimals=rnorm(10),MyStrings=rep(c("A","B"),5))
is.data.frame(simple_df)
simple_df
class(simple_df$MyStrings)

simple_df<-data.frame(MyDecimals=rnorm(10),MyStrings=rep(c("A","B"),5), stringsAsFactors=FALSE)
is.data.frame(simple_df)
simple_df
class(simple_df$MyStrings)

simple_list<-list(rnorm(10),rep(c("A","B"),5))
simple_list

nchar(c("ABCD","EFGH"))
length(c("ABCD","EFGH"))

chartr("a-z","A-Z","I want to change this to uppercase")

strsplit(c("A,B","C#D"),"[,#]")
