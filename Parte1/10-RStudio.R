#Dataframes

# criando um datafram vazio
df <- data.frame()
class(df)
df


#criando vetores vazios
nomes <- character()
idades <- numeric()
datas <- as.Date(character())
codigos <- integer()

df <- data.frame(c(nomes, idades, datas, codigos))
df

#criando vetores
pais = c("EUA", "Dinamarca", "Holanda", "Espanha", "Brasil")
nome = c("Mauricio", "Pedro", "Aline", "Beatriz", "Marta")
altura = c(1.78, 1.72, 1.63, 1.59, 1.53)
codigo = c(5001, 2183, 4702, 7965, 8890)

#Criando um dataframe de diversos vetores
pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa
View(pesquisa)

#Adicionando outro vetor no dataframe
olhos = c("verde", "azul", "azul", "castanho", "castanho")
pesq = cbind(pesquisa, olhos)
pesq

#informacoes sobre o dataframe
str(pesq)
dim(pesq)
length(pesq)

#obtendo um vetor de um dataframe
pesq$pais
pesq$nome

#extraindo um unico valor
pesq[1,1]
pesq[3,2]

#numero de linhas e colunas
nrow(pesq)
ncol(pesq)

#primeiros elementos do dataframe
head(pesq)
head(mtcars)

#ultimos elementos do dataframe
tail(pesq)
tail(mtcars)

#dataframes built in no R
?mtcars
mtcars

##filtro para um subset de dados que atendem a um criterio
pesq[altura < 1.6, ]
pesq[altura< 1.6, c('codigo', 'olhos')]
pesq

#dataframes nomeados
names(pesq) <- c("Pais", "Nome", "Altura", "Código", "Olhos")
pesq

colnames(pesq) <- c("Var1", "Var2", "Var3", "Var4", "Var5")
rownames(pesq) <- c("Obs1", "Obs2", "Obs3", "Obs4", "Obs5")
pesq

#importando arquivos
getwd() #retorna o diretorio de trabalho
#read.xls() - Excel
#read.mtp() - Minitab
#read.spss() - SPSS
#read.table() - arquivos.txt
#read.csv() - arquivos.csv
#read.delim() - leitura de arquivos delimitados

?read.csv
df2 <- data.frame(read.csv(file = 'C:/Users/arnou/OneDrive/Documentos/ARNOULD/Data_Science_Academy/R_fundamentos_para_analise_de_dados/DATASETS/parte3/sono.csv', header = TRUE, sep = ','))
df2
head(df2)
summary(df2)

summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)

#combinando dataframes
df3 <- merge(pesq, df2)
df3



















