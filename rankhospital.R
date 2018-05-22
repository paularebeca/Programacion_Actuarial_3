work_dir<-"c:/Users/paula/OneDrive/Documentos/Progra Actuarial 3/Programacion_Actuarial_3/Hospitales"
setwd(work_dir)

rankhospital <- function(estado, resultado, num = "mejor") 
{
    lectura<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    estados<- unique(lectura$State)
        if (!estado %in% estados) 
        {
          stop("El estado es inválido.")
        }
    
    causas<- c("ataque", "falla", "neumonía")
        if (!resultado %in% causas) 
        {
          stop("El resultado no es válido.")
        }
  
    columnas<- c(11, 17, 23) 
    sustituto<- if(resultado == "ataque") { 11 }
                else if (resultado == "falla") { 17 }
                else if (resultado == "neumonía") { 23 }
    
    guardar <- lectura[lectura$State == estado,]
    #ordenar<-guardar[order(guardar[[sustituto]]),guardar[["Hospital.Name"]], na.last = NA,]
    ordenar<-guardar[order(as.numeric(guardar[[sustituto]]),guardar[[2]], na.last = NA),]
    #na.last = NA remueve los NAs
    
    if (num=="mejor") {num = 1}
    if (num== "peor") {num = nrow(ordenar)}
    ordenar[num, 2]
  
}

rankhospital("TX", "falla", 4)
rankhospital("MD", "ataque", "peor") 
rankhospital("MN", "ataque", 5000) 