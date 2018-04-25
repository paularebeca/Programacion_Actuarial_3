work_dir<-"c:/Users/paula/OneDrive/Documentos/Progra Actuarial 3/Programacion_Actuarial_3/"
setwd(work_dir)

corr <- function(directorio, horizonte=0) 
{
  directorio<-"c:/Users/paula/OneDrive/Documentos/Progra Actuarial 3/Programacion_Actuarial_3/specdata/specdata"
  cuenta <- list.files(directorio, full.names = TRUE)
  correlacion <- vector(mode="numeric", length = 0)
  
  for (contador in 1 : length(cuenta))
  {
    lectura <- read.csv(cuenta[contador])
    registro<- sum((!is.na(lectura$sulfate)) & (!is.na(lectura$nitrate)))
    
    if(registro > horizonte)
    {
      posicion <- lectura[which(!is.na(lectura$sulfate)),]
      otro <- posicion [ which(!is.na(posicion$nitrate)),]
      correlacion <- c(correlacion, cor(otro$sulfate, otro$nitrate))
    }

  }
  correlacion
}

summary(corr("specdata", 400))
summary(corr("specdata"))