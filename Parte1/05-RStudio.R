#Objetos em R

#vetor: possui uma dimens�o e um tipo espec�fico de dado
vetor1 <- c(1:10)
vetor1
length(vetor1)
class(vetor1)
typeof(vetor1)


#matriz: possui 2 dimens�es e 1 tipo de dado
matriz1 <- matrix(1:10, nrow = 2)
matriz1
length(matriz1)
mode(matriz1)
class(matriz1)
typeof(matriz1)

#Array: possui 2 ou mais dimensoes e 1 tipo de dado
array1 <- array(1:5, dim=c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)

#data frames: dados de diferentes tipos
#maneira mais facil de explicar data frames � matriz com diferentes tipos de dados
View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)

#Listas: cole��es de diferentes objetos
#diferentes tipos de dados s�o poss�veis e comuns
lista1 <- list(a=matriz1, b=vetor1)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)

#Fun��es: tambem s�o vistas como objetos no R
func1 <- function(x){
  var1 <- x*x
  return(var1)
}

func1(5)
class(func1)

#removendo objetos
objects()
rm(lista1, func1)
objects()
)