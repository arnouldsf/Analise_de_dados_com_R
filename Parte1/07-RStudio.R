#Matrizes

#Criando matrizes

#numero de linhas
matrix (c(1,2,3,4,5,6), nr = 2)
matrix (c(1,2,3,4,5,6), nr = 3)
matrix (c(1,2,3,4,5,6), nr = 6)

#numero de colunas
matrix (c(1,2,3,4,5,6), nc = 2)

#help
?matrix

#matrizes precisam ter um numero par de valores
matrix(c(1,2,3,4,5), nc = 2)

#criando matrizes a partir de vetores e preenchendo a partir
meus_dados = c(1:10)
matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = T)
matrix(data = meus_dados, nrow = 5, ncol = 2)

#fatiando a matriz
mat <- matrix(c(2,3,4,5), nr = 2)
mat 
mat[1,2]
mat[2,2]
mat[1,3]
mat[,2]

#criando uma matriz diagonal
matriz = 1:3
diag (matriz)

#Extraindo vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)

#Transposta da matriz
W <- matrix(c(2,4,6,8), nr=2, ncol=2)
W
t(W)
U<-t(W)
U

#Obtendo uma matriz inversa
solve(W)

#Multiplicação de matrizes
mat1 <- matrix(c(2,3,4,5), nr=2)
mat2 <- matrix(c(6,7,8,9), nr=2)
mat1
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2

#multiplicando matriz com vetor
x <- c(1:4)
x
y <- matrix(c(2,3,4,5), nr=2)
y
x * y

#nomeando a matriz
mat3 <- matrix(c("futebol", "natação", "campo", "piscina"), nr=2)
mat3
dimnames(mat3) = (list( c("linha1", "linha2"), c("coluna1", "coluna2")))
mat3

#identificando linhas e colunas no momento da criação da matriz
matrix(c("futebol", "natação", "campo", "piscina"), nr=2, dimnames = (list( c("linha1", "linha2"), c("coluna1", "coluna2"))))

#combinando matrizes
mat4 <- matrix(c(2:5), nr=2)
mat4
mat5 <- matrix(c(6:9), nr=2)
mat5

cbind(mat4, mat5)
rbind(mat4,mat5)

#desconstruindo a matriz
c(mat4)

