work_dir<-"c:/Users/paula/OneDrive/Documentos/Progra Actuarial 3/Programacion_Actuarial_3/Hospitales"
setwd(work_dir)

outcome<-read.csv("outcome-of-care-measures.csv", colClasses = "character", stringsAsFactors = FALSE)
#stringsAsFactors = FALSE crea un vector de caracteres, en vez de un factor
#head(outcome) 
outcome[, 11] <- as.numeric(outcome[, 11]) 
hist(outcome[, 11], main = "Tasas de mortalidad de 30 días por ataque al corazón") 


mejor<-function(estado, resultado)
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
  
  #cero[cero == "Not Available"]<-0
  #lectura[, columnas] <- suppressWarnings(as.numeric(levels(lectura[, columnas])[lectura[, columnas]]))
  
  guardar <- lectura[lectura$State == estado,]
  minimo <- which.min(guardar[,sustituto])
  guardar[minimo, 2]
}

mejor("TX", "ataque")
mejor("TX", "falla")
mejor("MD", "ataque")
mejor("MD", "neumonía")
mejor("TX", "perro")
mejor("lugar", "falla")