#Strings

texto <- "isso é uma string"
texto

x = as.character(3.14)
x
class(x)

#concatenando Strings
nome = "barack"; sobrenome = "Obama"
cat(nome, sobrenome)

#Formatando a saída
sprintf("%s governa os EUA há %d anos", "Trump", 2)

#Extraindo parte da String
texto <- "Isso é uma string!"
substr(texto, start=12, stop=17)
?substr

#contando o numero de caracteres
nchar(texto)

#Alterando a capitalização
tolower("Histogramas e Elementos de Dados")
toupper("Histogramas e Elementos de Dados")

#usando stringr
library(stringr)

#dividindo uma string em caracteres
strsplit("Histogramas e Elementos de Dados", NULL)
?strsplit

#dividindo uma string em caracteres, após o caracter espaço
strsplit("Histogramas e Elementos de Dados", " ")

#Trabalhando com strings
string1 <- c("Esta é a primeira parte da minha string e será a primeira parte do meu vetor", 
             "Aqui a minha string continua mas será transformada no segundo vetor")
string1

string2 <- c("Precisamos testar outras strings - @???!&$", 
            "Analise de dados em R")
string2

#Adicionando 2 strings
str_c(c(string1, string2), sep="")

#Podemos contar quantas vezes um caracter aparece no texto
str_count(string2, "s")

#Localiza a primeira e a ultima posição do caracter na string
str_locate_all(string2, "s")

#substitui a primeira ocorrencia de um caracter
str_replace(string2, "\\s", "")

#substitui todas as ocorrencias de um caracter
str_replace_all(string2, "\\s", "")

#Detectando padroes em strings
string1 <- "23 mai 2000"
string2 <- "1 mai 2000"
padrao <- "mai 20"
grepl(pattern = padrao, x = string1)
padrao = "mai20"
grepl(pattern = padrao, x = string1)

#importando arquivo txt
#http://www.gutenberg.org/cache/epub/100/pg100.txt

arquivo <- read.csv("http://www.gutenberg.org/cache/epub/100/pg100.txt")
head(arquivo)
tail(arquivo)

str_count(arquivo, "7")
str_locate_all(arquivo, "7")

#Criando funções para manipular strings
strtail <- function(s,n=1){
  if(n<0)
    substring(s,1-n)
  else
    substring(s, nchar(s)-n+1)
  }

strtail("String de teste", 6)
