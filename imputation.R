install.packages("mice")
library(mice)
df<-read.csv(file.choose())
head(df)
mice(data=df,method = 'pmm',m=5,maxit = 10)->result_data
complete(result_data,1)->results
write.csv(results,'data1.csv',row.names = F)
