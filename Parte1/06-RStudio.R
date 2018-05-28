#vetores

#vetor de caracteres
vetor_caracter = c("ola", "DSA")
vetor_caracter

#vetor de floats
vetor_numerico = c(1.9, 45.3, 25.4)
vetor_numerico

#vetor de valores complexos
vetor_complexo = c(2.5+3i, 3.9+4i)
vetor_complexo

#vetor de valores lógicos
vetor_logico = c(TRUE, FALSE, FALSE, TRUE)
vetor_logico

#vetor de numeros inteiros
vetor_integer = c(2,5,9)
vetor_integer

#utilizando seq()
vetor1 = seq(1:10)
vetor1
is.vector(vetor1)

#utilizando rep()
vetor2 = rep(1:5)
vetor2

#combinação de vetores
v1 = c(2,3,4,5)
v2 = c("aa", "bb", "cc")
c(v1,v2)

#operações com vetores
x = c(1,2,3,4)
y = c(5,6,7,8)

x*5
x+y
x*y
x/y

#vetor nomeado, é usado para colocar titulos nas colunas do vetor
v = c("Barack", "obama")
v
names(v) = c("Nome", "Sobrenome")
v["Nome"]
