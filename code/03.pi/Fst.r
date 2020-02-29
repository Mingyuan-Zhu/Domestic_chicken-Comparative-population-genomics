rm(list=ls())
setwd("C:\\Users\\Administrator\\Desktop\\新建文件夹\\03.pi")
mydata=read.table("White-black.merge.plot.txt", header=T)
mydata=mydata[order(as.numeric(mydata[,1]),decreasing = FALSE),]
colnames(mydata)=c("CHR","BP","P")
mydata=mydata[,c(1,2,3)]
mydata[1:10,]
#mydata <- mydata[which(mydata$V1 ==1),]
dim(mydata)
#source("C:\\Users\\Administrator\\Desktop\\新建文件夹\\03.pi\FST.source.r")
source("FST.source.r")
GAPIT.Manhattan(mydata,name.of.trait="")

