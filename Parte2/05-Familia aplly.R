#Familia aplly - uma forma elegante de fazer loop

#aplly() - arrays e matrizes
#taplly() - os vetores podem ser divididos em diferentes substrings
#lapply() - vetores e listas
#saplly() - versão amigavel da lapply
#vapply() - similar o lapply()
#eaplly() - gera uma lista
#mapply() - similar a sapply, multivariada
#by

#Se voce estiver trabalhando com objetos

#list, numeric, character (list/vector) => sapply ou lapply
#matrix, data.frame (agregação por coluna) => by ou tapply
#Operações por linha ou operações especificas => apply

#Usando um loop
lista1 <- list(a = (1:10), b = (45:77))

#Calculando o total de cada elemento da lista com loop for
valor_a = 0
valor_b = 0
for(i in lista1$a){
  valor_a = valor_a + i
}
for(j in lista1$b){
  valor_b = valor_b + j
}
print(valor_a)
print(valor_b)

#calculando cada elemento da lista com sapply
?sapply
sapply(lista1, sum)

#aplicando funçoes com sapply
sapply(lista1, mean)

#apply()
?apply

x <- matrix(rnorm(9), nr = 3, byrow = T)
x
apply(x, 1, mean) #calcula a média de cada linha da matriz e retorna um vetor
apply(x, 2, mean) #calcula a média de cada coluna da matriz e retorna um vetor
apply(x, 1, plot)

resultapply <- apply(x, 1, mean)
resultapply

escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Arnould'),
                     Matemática = c(90,80,81,87,56,79),
                     Geografia = c(100,78,86,90,98,67),
                     Quimica = c(76,56,89,90,100,87))
escola

#Calculando a média por aluno
escola$Media = NA
escola

escola$Media = apply(escola[, c(2,3,4)], 1, mean) #tira a média dos valores das colunas 2, 3, 4
escola
escola$Media = round(escola$Media) #faz o arredondamento da coluna média
escola

#tapply() vs sqldf
install.packages('sqldf')
require(sqldf)

escola2 <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Alan', 'Alice', 'Alana'),
                      Semestre = c(1,1,1,2,2,2),
                      Matemática = c(90,80,81,87,56,79),
                      Geografia = c(100,78,86,90,98,67),
                      Quimica = c(76,56,89,90,100,87))
escola2

sqldf("select aluno, sum(Matemática), sum(Geografia), sum(Quimica) from escola2 group by aluno")
tapply(c(escola2$Matemática), escola2$Aluno, sum)

#by
?by

sqldf("select aluno, sum(Matemática), sum(Geografia), sum(Quimica) from escola2 group by semestre")
by(escola2[, c(3,4,5)], escola2$Semestre, colSums)

#lapply()
?lapply

lista1 <- list(a = (1:10), b = (45:77))
lista1

lapply(lista1, sum)
sapply(lista1, sum)

#vapply()
?vapply

vapply(lista1, fivenum, c(Min. = 0, "1stQu." = 0, Median = 0, "3rdQu." = 0, Max = 0))

#replicate
?replicate
replicate(7, runif(10))

#mapply()
?mapply
mapply(rep, 1:4, 4:1)

#rapply()
?rapply

lista2 <- list(a = c(1:5), b = c(6:10))
lista2

rapply(lista2, sum)
rapply(lista2, sum, how = "list")
