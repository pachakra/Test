#Example of merging two data frames
#First data frame has customer and transaction and the second has
#demographic information
df1=read.csv("merge_1.csv")
df2=read.csv("merge_2.csv")
df1
df2
#Default - inner join
merge(df1,df2, by.x="Customer", by.y="Cust_id")

#Left outer join
merge(df1,df2, by.x="Customer", by.y="Cust_id", all.x=TRUE)

#Right outer join
merge(df1,df2, by.x="Customer", by.y="Cust_id", all.y=TRUE)