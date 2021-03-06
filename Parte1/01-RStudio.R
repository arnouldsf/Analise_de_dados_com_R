#Explorando o 01-RStudio.R

#Nome dos contributors
contributors()

#licen�a
license()

#informa��es sobre a se��o
sessionInfo()

#imprimir na tela
print("R - uma das primeiras ferramentas dos cientistas de dados")

#Criar gr�ficos
plot(1:30)
hist(rnorm(10))

#Instalar pacotes
install.packages('randomForest')
install.packages('ggplot2')

#carregar o pacote
library(ggplot2)

#descarregar o pacote
detach(package:ggplot2)

#se souber o nome da fun��o
help(mean)
?mean

#se nao souber o nome da fun��o
help.search('randomForest')
help.search('matplot')
??matplot
RSiteSearch('matplot')
example('matplot')
