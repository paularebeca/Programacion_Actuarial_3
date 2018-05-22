work_dir<-"c:/Users/paula/OneDrive/Documentos/Progra Actuarial 3/Programacion_Actuarial_3/Hospitales"
setwd(work_dir)

rankingcompleto <- function(resultado, num = "mejor")
{
  lectura<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  #estados<- levels(lectura[lectura$State])
  estados<-sort(unique(lectura$State))
  
  causas<- c("ataque", "falla", "neumonía")
  if (!resultado %in% causas) 
    {
      stop("El resultado no es válido.")
    }
    
  columnas<- c(11, 17, 23) 
  sustituto<- if(resultado == "ataque") { 11 }
              else if (resultado == "falla") { 17 }
              else if (resultado == "neumonía") { 23 }
  
  guardar <- lectura[lectura$State == estados,]
  ordenar<- guardar[order(as.numeric(guardar[[sustituto]]),guardar[[2]], na.last = NA),]
  
  nombrehospital<-character(0)
  
  #for (contador in seq_along(estados))
  for (contador in 1:length(estados))
    {
     informacion<- lectura[lectura$State == estados[contador],] 
     ordenamiento<- informacion[order(as.numeric(informacion[[sustituto]]),informacion[[2]],decreasing=FALSE,na.last=NA),]
     cambio <- num
     if(cambio == "mejor"){cambio = 1}
     if (cambio == "peor"){cambio = nrow(ordenamiento)}
     
     #nombrehospital[contador]<-ordenamiento[cambio, "Hospital.Name"]
     nombrehospital[contador]<-ordenamiento[cambio, 2]
     
    }
  
  data.frame(Hospital= nombrehospital, Estado = estados, row.names = estados)
  
}

head(rankingcompleto("ataque", 20),10)
tail(rankingcompleto("neumonía", "peor"),3)
tail(rankingcompleto("falla"),10)
tail(rankingcompleto("otro"),10)