work_dir<-"c:/Users/paula/OneDrive/Documentos/Progra Actuarial 3/Programacion_Actuarial_3/"
setwd(work_dir)

completos<- function(directorio, id=1:332)
{
  directorio<-"c:/Users/paula/OneDrive/Documentos/Progra Actuarial 3/Programacion_Actuarial_3/specdata/specdata"
  archivos<-list.files(directorio, full.names = TRUE)
  registro<-data.frame()
  
  for(i in id)
  {
    leer<- read.csv(archivos[i])
    nobs<-sum(complete.cases(leer))
    #id<-numeric(length(id))
    #nobs<-numeric(length(id))
    var<-data.frame(i, nobs)
    registro<-rbind(registro, var)
  }
  colnames(registro)<-c("id","nobs")
  print(registro)
}

completos("specdata",3)
completos("specdata", 25:30)