#Listas

#Use list() para criar listas

#Lista de Strings
lista_caracter = list('A', 'Bem-vindo', 'DSA')
lista_caracter

#lista de numeros inteiros
lista_inteiros = list(2,3,4)

#lista de floats
lista_numerico = list(2.1,3.2,5.6)
lista_numerico

#lista de numeros complexos
lista_complexos = list(5+2i, 3+1i)
lista_complexos

#lista de valores logicos
lista_logico = list(TRUE, FALSE, TRUE)
lista_logico

#listas compostas
lista_composta1 = list("A", 3, TRUE)
lista_composta1

lista1 <- list(1:10, c("maria", "joao", "arnould"), rnorm(10))
lista1

?rnorm

#Slicing da lista
lista1[1]
lista1[c(1,2)]
lista1[2]
lista1[[2]][1]
lista1[[2]][1] = "monica"
lista1

#para nomear os elementos - listas nomeadas
names(lista1) <- c("inteiros", "caracteres", "numéricos")
lista1

vec_num <- 1:4
vec_char <- c("A", "B", "C", "D")

lista2 <-list(elemento1=vec_num, elemento2=vec_char)
lista2

#nomerar elementos diretamente
lista2 <-list(elemento1=3:5, elemento2=c(7,2,3,5))
lista2

#Trabalhando com elementos específicos da lista
names(lista1) <- c("inteiros", "caracteres", "numéricos")
lista1

lista1$caracteres
length(lista1$inteiros)
lista1$inteiros

#verificar o comprimento da lista
length(lista1)

#podemos extrair elemento especifico dentro de cada nivel usando o nome da lista
lista1$caracteres[2]

#mode dos elementos
mode(lista1$numéricos)
mode(lista1$caracteres)

#combinando 2 listas
lista3 <- c(lista1, lista2)
lista3

#transformar um vetor em lista
v = c(1:3)
v
l = as.list(v)
l

#unindo 2 elementos de uma lista
mat = matrix(1:4, nrow=2)
mat
vec = c(1:9)
vec
lst = list(mat, vec)
lst
