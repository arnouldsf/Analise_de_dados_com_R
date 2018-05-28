#Fatores

vec1 <- c("Macho", "Femea", "Femea", "Macho", "Macho")
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)

#variaveis categóricas nominais
#não existe uma ordem implicita
animais <- c("Zebra", "Pantera", "Rinoceronte", "Macaco", "Tigre")
animais
class(animais)
fac_animais <- factor(animais)
fac_animais
class(fac_animais)
levels(fac_animais)

#Variaveis categóricas ordinais
#possuem uma ordem natural
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
fac_grad <- factor(grad, order = TRUE, levels = c("Doutorado", "Mestrado", "Bacharelado"))
fac_grad
levels(fac_grad)

#Sumarizar os dados fornece uma visão geral sobre o conteudo dos dados
summary(fac_grad)
summary(grad)

vec2 <- c("M", "F", "F", "M", "M", "M", "F", "F", "M", "M", "M", "F", "F", "M", "M")
vec2
fac_vec2 <- factor(vec2)
fac_vec2
levels(fac_vec2) <- c("Femea", "Macho")
summary(vec2)
summary(fac_vec2)


# Mais exemplos
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata

rdata = factor(data, labels = c("I", "II", "III"))
rdata

#Fatores não ordenados
set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1

#Transformando os dados. O R apenas criou os níveis, o que não significa que existe uma hierarquia
f.set1 <- factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)

#Fatores ordenados
o.set1 <- factor(set1,
                 levels = c("CA", "BA", "AA", "CC", "B"),
                 ordered = TRUE)
o.set1
is.ordered(o.set1)

as.numeric(o.set1)
table(o.set1)

#Fatores e dataframes
df <- read.csv2("C:/Users/arnou/OneDrive/Documentos/ARNOULD/Data_Science_Academy/R_fundamentos_para_analise_de_dados/DATASETS/parte2/etnias.csv", sep=',')
df
View(df)

#Variaveis do tipo fator
str(df)

# Niveis dos fatores
# Internamente, o R armazena valores inteiros e faz um mapeamento para as strings (em ordem alfabetica)
# e agrupa as estatisticas por niveis. Agora, se fizermos sumarizacao de estatisticas, e possivel visualizar 
# a contabilizacao de  para cada categoria
levels(df$Etnia)
summary(df$Etnia)

#Plot
#Agora se fizermos um plot, temos um boxplot para estas variaveis
plot(df$Idade~df$Etnia, xlab="Etnia", ylab="Idade", main="Idade por etnia")

#Regressao
summary(lm(Idade~Etnia, data=df))

#convertendo uma coluna em varialvel categorica. Isso criará um fator não ordenado
df
str(df)
df$Estado_Civil.cat <- factor(df$Estado_Civil, labels = c("Solteiro", "Casado", "Divorciado"))
df


# Compreendendo a ordem dos fatores

# Niveis dos fatores
# Internamente, o R armazena valores inteiros e faz um mapeamento para as strings (em ordem alfabetica)
# e agrupa as estatÃ?sticas por nÃ?veis.

# Criando vetores
vec1 <- c(1001, 1002, 1003, 1004, 1005)
vec2 <- c(0, 1, 1, 0, 2)
vec3 <- c('Verde','Laranja','Azul','Laranja','Verde')

# Unindo os vetores em um dataframe
df <- data.frame(vec1, vec2, vec3)
df

# Verificando que o R categorizou a ultima coluna como factor
str(df)

# Verificando os niveis do fator. Perceba que os niveis estÃ£o categorizados em ordem alfabetica
levels(df$vec3)

# Criando uma outra coluna e atribuindo labels
df$cat1 <- factor(df$vec3, labels = c("cor2", "cor1", "cor3"))
df

# Internamente, os fatores sao registrados como inteiros, mas a ordenacao segue a ordem alfabetica
# das strings
str(df)

# Veja como foi feita a atribuicao:
# Azul = cor2
# Laranja = cor1
# Verde = cor3
# Ou seja, os vetores com os labels, seguiram a ordem alfabetica dos niveis classificados pelo R

# Criando uma outra coluna e atribuindo labels
# Ao aplicarmos a funÃ§Ã£o factor() a coluna vec2, internamente o R classificou em ordem alfabetica
# e quando atribuimos os labels, foi feita a associacao.
df$cat2 <- ?factor(df$vec2, labels = c("Divorciado", "Casado", "Solteiro"))
df
str(df)
levels(df$cat2)