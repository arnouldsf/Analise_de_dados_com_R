# Expressoes Regulares

# grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)
# grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# sub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# regexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

str <- c("Expressoes", "regulares", "em linguagem R", 
         "permitem a busca de padroes", "e exploracao de textos",
         "podemos buscar padroes em digitos",
         "como por exemplo",
         "10992451280")

length(str)
str

#grep()
#mostra a posi��o que ele encontrou determinado caracter
grep("ex", str, value = F)
grep("ex", str, value = T)
grep("\\d", str, value = F)
grep("\\d", str, value = T)

#grepl()
#um pouco mais simples que grep()
grepl("\\d+", str)
grepl("\\D", str)

#gsub()
#substitui um valor determinado por outro
gsub("em", "/", str)
gsub("ex", "EX", str, ignore.case = T)

#sub()
#substitui apenas o primeiro elemento que ela encontrar e para e o gsub substitui todos
sub("em", "EM", str)

#regexpr()
frase <- "isso � uma string"
regexpr(pattern = "U", frase)

# gregexpr()
gregexpr(pattern = "u", frase)


str2 <- c("2678 eh maior que 45 - @???!§$",
          "Vamos escrever 14 scripts R")

str2

# gsub()
gsub("\\d", "", str2)#remove tudo que � digito
gsub("\\D", "", str2)#remove tudo que n�o � digito
gsub("\\s", "", str2)#remove todos os espa�os
gsub("[iot]", "Q", str2)
gsub("[[:punct:]]", "", str2)#remove os elementos que forem pontua��o
gsub("[^@]", "", str2)