pollutantmean <- function(directory, pollutant, id = 1:332 ) {
    tot<-0
    qt<-0
    for (i in id) {
        ni<-nchar(i) # tamanho do numero
        if (ni == 1) {istring=paste(0,0,i,sep="")}
        if (ni == 2) {istring=paste(0,i,sep="")}
        if (ni == 3) {istring=i}
        file<-paste(directory,"/",istring,".csv",sep="")
        f<-read.csv(file, header = TRUE,sep=",")
        
        # varrer o arquivo e calcular sua soma e o qt
        if (pollutant=="sulfate") {np=2}
        if (pollutant=="nitrate") {np=3}
        s<-summary(f[,np]) # pegar os Nas 
        totf<-sum(f[,np],na.rm=TRUE)
        d<-dim(f)
        qtf=d[1]-s[[7]] # todas li - nas 
        tot=tot+totf
        qt=qt+qtf
    }
tot/qt
}
