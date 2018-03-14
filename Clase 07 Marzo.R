setwd("C:/Users/paula/OneDrive/Documentos/Progra Actuarial 3/Programacion_Actuarial_3")

#Extraccion de datos
airquality[1:6,]
completos<-complete.cases(airquality)
data<-airquality[completos,]
data[1:6,]


##Operaciones
x<-1:4; y<-6:9
x+y
#Se suman las entradas de cada vector
x>2
x
x>=2
y==8
#La asignación se busca con <- no con =
x*y
x<-matrix(1:4,2,2)
x
y<-matrix(rep(10,4),2,2)
y
x*y #Multiplicar entrada por entrada
x/y #División de elemento entre elemento
x%*%y #Multiplicación matricial
y%*%x #En multiplicación de matrices se pierde la conmutatividad
y;x;y%*%x

#Estructuras de Control
#Permiten manejar el flujo de la ejecución de un programa, 
#dependiendo de las condiciones al momento de correrlo.

#if/else:para probar una condición
#for: ejecuta un ciclo n veces
#while: ejecuta un ciclo mientras se cumpla una condicion
#repeat: ejecuta un ciclo infinito
#break: termina la ejecucion de un ciclo
#next: "salta" una iteracion de un ciclo
#return: sale de la funcion - se entrega un resultado como valor de la funcion


x=3
x

if(x<5)
{x=FALSE
}else {x=TRUE
}
x

x=7
if(x<5)
{x=FALSE
}else {x=TRUE
}
x

x=4
if (x<5)
{ 
  print("Menor")
 } else {
    print("Mayor")
}

x=50
if (x<5)
{ 
  print("Menor")
 } else {
  print("Mayor")
}

x=73
if(x>3)
{
  y<-10
}else{
  y<-0
}
print(y)

x=1
if(x>3)
{
  y<-10
}else{
  y<-0
}
print(y)

x=5
y<- if (x>3)
{
  10
}else{
    0
}
print(y)

x=1
y<- if (x>3)
{
  10
}else{
  0
}
print(y)

#Ciclos for

for(i in 1:10) 
{
  print(i)
}

for(i in c("a","b","c")) 
{
  print(i)
}
#recorre los valores dentro de una secuencia o un vector
#es más similar al For Each de VBA

x<-c("a", "b", "c","d")
for (i in 1:4)
{
  print(x[i])
}

for (i in seq_along(x)) #Secuencia a lo largo de x
{
print(x[i])  
}

for(letra in x)
{
print(letra)  
}

for (i in 1:4) print(x[i])

x<- matrix(1:6, 2, 3)
print(x)
for (i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

count<- 0
while(count<10)
{
 print(count) 
 count<- count+1
}


#Ejemplo ciclo While
set.seed(1)
z<-5
contador <-0
while(z>=3 && z<=10) 
{
  print(z)
  ##for (i in 1:contador+1) {
    ##v<-matrix(data=z, nrow =  i)}

  moneda <- rbinom(1, 1, 0.5) #rbinom genera un número al azar - distrubución binomial
  if(moneda==1)
  {
   #Caminata Aleatoria
    z<- z+1
  }else{
    z<- z-1
  }
  
  #corchetes para llamar varios elementos en una lista
  p[contador+1] <-z
  contador<-contador+1
  
}
print(p)
length(p)
str(p)
print(contador)
#sapply










