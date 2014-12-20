corr <- function(directory,threshold=0) {
    id = 1:332 
    corr <-NULL
    for (i in id) {
        ni<-nchar(i) # tamanho do numero
        if (ni == 1) {istring=paste(0,0,i,sep="")}
        if (ni == 2) {istring=paste(0,i,sep="")}
        if (ni == 3) {istring=i}
        file<-paste(directory,"/",istring,".csv",sep="")
        f<-read.csv(file, header = TRUE,sep=",")
        ffil<-subset(f,!is.na(nitrate) & !is.na(sulfate))
        d<-dim(ffil)
        if (threshold <= d[1]) {
            corr<-c(corr,cor(ffil$sulfate, ffil$nitrate))} 
    }
corr    
    
        
        
       
}
