complete <- function(directory,id = 1:332 ) {
    cnobs<-NULL
    for (i in id) {
        ni<-nchar(i) # tamanho do numero
        if (ni == 1) {istring=paste(0,0,i,sep="")}
        if (ni == 2) {istring=paste(0,i,sep="")}
        if (ni == 3) {istring=i}
        file<-paste(directory,"/",istring,".csv",sep="")
        f<-read.csv(file, header = TRUE,sep=",")
        x=f[,2]+f[,3]
        d<-dim(f)
        s<-summary(x)
        qnobs=d[1]-s[[7]]
        cnobs=c(cnobs,qnobs)
    }
    ftes<-data.frame(id=id,nobs=cnobs)
        
        
       
}
