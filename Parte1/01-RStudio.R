#Explorando o 01-RStudio.R

#Nome dos contributors
contributors()

#licença
license()

#informações sobre a seção
sessionInfo()

#imprimir na tela
print("R - uma das primeiras ferramentas dos cientistas de dados")

#Criar gráficos
plot(1:30)
hist(rnorm(10))

#Instalar pacotes
install.packages('randomForest')
install.packages('ggplot2')

#carregar o pacote
library(ggplot2)

#descarregar o pacote
detach(package:ggplot2)

#se souber o nome da função
help(mean)
?mean

#se nao souber o nome da função
help.search('randomForest')
help.search('matplot')
??matplot
RSiteSearch('matplot')
example('matplot')
