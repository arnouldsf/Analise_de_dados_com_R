# Importacao de outros Softwares Estatisticos

install.packages("haven")
library(haven)


# SAS
vendas <- read_sas("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte4/vendas.sas7bdat")
?read_sas
class(vendas)
print(vendas)
str(vendas)


# Stata
df_stata <- read_dta("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte4/mov.dta")
class(df_stata)
str(df_stata)

# Converte os valores para data
df_stata$Date <- as.Date(as_factor(df_stata$Date))
str(df_stata)
plot(df_stata)


# SPSS
pessoas <- read_sav("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte4/pessoas.sav")
class(pessoas)
head(pessoas)



# Pacote Foreign

install.packages("foreign")
library(foreign)

# Stata
florida <- read.dta("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte4/florida.dta")
tail(florida)
class(florida)


# SPSS
# http://cw.routledge.com/textbooks/9780415372985/resources/datasets.asp

dados <- read.spss("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte4/international.sav")
class(dados)
head(dados)
df <- data.frame(dados)
df
head(df)


# Criando um boxplot
boxplot(df$gdp)


# Se voce estiver familiarizado com estatistica, você vai ter ouvido falar de Correlacao. 
# Eh uma medida para avaliar a dependencia linear entre duas variaveis. 
# Ela pode variar entre -1 e 1; 
# Se proximo de 1, significa que ha uma forte associacao positiva entre as variaveis. 
# Se proximo de -1, existe uma forte associacao negativa: 
# Quando a correlacao entre duas variaveis é 0, essas variaveis são possivelmente independentes: 
# Ou seja, nao ha nenhuma associacao entre X e Y.

# Coeficiente de Correlação. Indica uma associacao negativa entre GDP e alfabetizacao feminina
cor(df$gdp, df$f_illit)


# **** Importante ****
# Correlacao não implica causalidade
# A correlacao, isto eh, a ligacao entre dois eventos, nao implica 
# necessariamente uma relacao de causalidade, ou seja, que um dos 
# eventos tenha causado a ocorrencia do outro. A correlacao pode 
# no entanto indicar possiveis causas ou areas para um estudo mais 
# aprofundado, ou por outras palavras, a correlacao pode ser uma 
# pista.











