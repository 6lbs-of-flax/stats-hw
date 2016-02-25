#Creatinine Walkthrough
read.csv("creatinine.csv")
library(mosaic)
creatinine= read.csv("creatinine.csv", header = TRUE)
summary(creatinine)
creatclear_samplemean=mean(creatinine$creatclear)
creatclear_samplemean
bootstrapped_sample= sample(creatinine, size = 157, replace = TRUE)
head(bootstrapped_sample, 20)
plot(table(bootstrapped_sample$orig.id))
#same as sample(creatinine, size=157, replace=TRUE)
bootstrapped_sample=resample(creatinine)
plot(table(bootstrapped_sample$orig.id))

