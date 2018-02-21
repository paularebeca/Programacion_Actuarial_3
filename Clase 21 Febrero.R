#Realizar asignación
x<- 1
x<- 2

#Para visualizar el resultado "print()"
print(x)

#La acción no se ejecuta al poner mayúsculas
print(X)

#Solicitar una impresión imprlícita
x

#Asignación de textos
msg <- "Hola"

#Solicitar una impresión de textos
print(msg)

#Expresión incompleta, para salir de ella se presiona "esc"
x <- 

#Impresión de un arreglo
x<- 1:20  
print(x)

y <- 3:9
print(y)

z<- 99:43
print(z)

#El operador ":" me permite hacer secuencias numéricas

w <- 2:15.5
print(w)
#Sólo imprimió los enteros
#Sólo hizo la secuencia con enteros, no tomó los decimales

z

1
1L

a<- 1
b<- 1L

#NaN "Not a Number"
#Podemos trabajar con números complejos o el concepto de Infinito
#exp(-Inf)= 0
#Inf + Inf = Inf
#Inf - Inf = NaN

#Creación de vectores con la funcón c()

d<- c(TRUE,FALSE, TRUE, T, F, F, T)   #Logical
print(d)

f<- c(1L, 2L, 3L, 4L)                 #Integer
print(f)

g<-c(1, 2 , 3, 4)                     #Numeric
g

e<- c(1+1i, 2+2i, -5+2i, 3.13-2i)     #Complex
e

h<- c("a","b","hola")                 #Character
h

#Creación de vectores con la función "vector"
j<- vector("numeric", length = 5)
print(j)    
#El vector se creó vacío

k<- c(1.76, "a")      #Queda como caracter porque el número se puede volver caracter y no al reves

l<- c(TRUE,2)    #Numérico
l

m<-c(TRUE, 25L)   #Entero
m

n<-c(FALSE, 2L, 5,3+12i)   #Todos se vuelven complejos
n
class(n)

ñ<- c("a", TRUE)
ñ
class(ñ)


#Coerción forzada
o<- 0:10
class(o)
as.numeric(o)
class(o)
as.character(o)
as.complex(o)
as.logical(o)

#Errores en la coerción forzada
p<- c("a","b","c")
as.numeric(p)
as.logical(p)
as.complex(p)
#Aparece NA porque esa coerción no es posible
#Not Available




  
  