work_dir<-"c:/Users/paula/OneDrive/Documentos/Progra Actuarial 3/Programacion_Actuarial_3/"
setwd(work_dir)
#directorio<-"c:/Users/paula/OneDrive/Documentos/Progra Actuarial 3/Programacion_Actuarial_3/specdata/specdata"

mediacontaminante<-function(directorio,contaminante="sulfate",id=1:332)
{
  depurar<-0
  añadir<-0
  directorio<-"c:/Users/paula/OneDrive/Documentos/Progra Actuarial 3/Programacion_Actuarial_3/specdata/specdata"
  for(contador in id)
  {
    numero<-""
    if(contador < 10) numero<-"00"
    else if (contador < 100) numero <-"0"
    specdata1<-paste(directorio, "/", numero, contador, ".csv", sep="")
    #print(specdata1)
    #leer<- read.csv(file=spectdata1, header = T, sep=",")
    leer<-read.csv(specdata1)
    nw<- leer[contaminante]
    nw<-nw[!is.na(nw)]
    #print(nw)
    
    depurar<- depurar + sum(!is.na(nw))
    #print(depurar)
    añadir<- añadir + sum(nw)
    #print(añadir)
    
  }
  resultado<-añadir/depurar
  print(resultado)
}
mediacontaminante("specdata", "nitrate", 70:72)
mediacontaminante("specdata", "sulfate", 1:10)
mediacontaminante("specdata", 3, 70:72)
mediacontaminante("specdata", 2, 34)