rm(list=ls())
setwd("C:\\Users\\Administrator\\Desktop\\R SweeD")
mydata=read.table("SweeD_Report.yuanbao_black.allchr.1K.plot", header=T)
mydata=mydata[order(as.numeric(mydata[,1]),decreasing = FALSE),]
colnames(mydata)=c("CHR","BP","P")
mydata=mydata[,c(1,2,3)]
mydata[1:10,]
#mydata <- mydata[which(mydata$V1 ==1),]
dim(mydata)
#source("F:/Global-chicken/Sailama_chicken_analysis/PI_analysis/leemng/FST.source.r")
source("FST.source.r")
GAPIT.Manhattan(mydata,name.of.trait="")

