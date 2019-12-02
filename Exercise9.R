#Question 1 
library(ggplot2)
performance = read.table("KCS-1 catalytic performance.txt",header = TRUE, sep="\t",stringsAsFactors = FALSE)
p = ggplot(data=performance, aes(x=Temperature, y = Mass))
p + geom_point() + stat_smooth(method="lm")+ theme_bw()


#Question 2
library(ggplot2)
datafile = read.table("data.txt",header=TRUE,sep=",", stringsAsFactors=FALSE)
#barplot of the means of the four populations
ggplot(data =datafile,aes(x = region, y = observations)) + xlab('region') + ylab("means of observations") + stat_summary(geom="bar", fun.y = "mean",fill="red") + theme_bw()

#scatter plot of all the observations
ggplot(data=datafile,aes(x=region,y=observations)) + xlab("region") + ylab("observations") + geom_jitter(alpha=0.1) + theme_bw()

#the barplot tells the means of the four populations are quite similar
#the scatterplot suggests the distribution of all the populaitons varied
#the mean value cannot represent the real data 