#Realizar asignaci�n
x<- 1
x<- 2

#Para visualizar el resultado "print()"
print(x)

#La acci�n no se ejecuta al poner may�sculas
print(X)

#Solicitar una impresi�n imprl�cita
x

#Asignaci�n de textos
msg <- "Hola"

#Solicitar una impresi�n de textos
print(msg)

#Expresi�n incompleta, para salir de ella se presiona "esc"
x <- 

#Impresi�n de un arreglo
x<- 1:20  
print(x)

y <- 3:9
print(y)

z<- 99:43
print(z)

#El operador ":" me permite hacer secuencias num�ricas

w <- 2:15.5
print(w)
#S�lo imprimi� los enteros
#S�lo hizo la secuencia con enteros, no tom� los decimales

z

1
1L

a<- 1
b<- 1L

#NaN "Not a Number"
#Podemos trabajar con n�meros complejos o el concepto de Infinito
#exp(-Inf)= 0
#Inf + Inf = Inf
#Inf - Inf = NaN

#Creaci�n de vectores con la func�n c()

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

#Creaci�n de vectores con la funci�n "vector"
j<- vector("numeric", length = 5)
print(j)    
#El vector se cre� vac�o

k<- c(1.76, "a")      #Queda como caracter porque el n�mero se puede volver caracter y no al reves

l<- c(TRUE,2)    #Num�rico
l

m<-c(TRUE, 25L)   #Entero
m

n<-c(FALSE, 2L, 5,3+12i)   #Todos se vuelven complejos
n
class(n)

�<- c("a", TRUE)
�
class(�)


#Coerci�n forzada
o<- 0:10
class(o)
as.numeric(o)
class(o)
as.character(o)
as.complex(o)
as.logical(o)

#Errores en la coerci�n forzada
p<- c("a","b","c")
as.numeric(p)
as.logical(p)
as.complex(p)
#Aparece NA porque esa coerci�n no es posible
#Not Available




  
  