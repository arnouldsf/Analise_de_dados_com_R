#Big data na prática 1 - Temperatura média das cidades brasileiras

#Dataset:
#Berkeley Earth
#http://berkeleyearth.org/data
#TemperaturasGlobais.csv ~ 78 Mb (zip) ~ 496 (unzip)

#instalando e carregando pacotes
install.packages("readr")
install.packages("data.table")
install.packages("dplyr")
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)

#Carregando os dados (usando um timer para comparar o tempo de carregamento do arquivo)

#usando read.csv2()
getwd() #para localisar o diretorio de trabalho
system.time(df_teste1 <- read.csv2(file = "C:/Users/arnou/OneDrive/Documentos/ARNOULD/Data_Science_Academy/R_fundamentos_para_analise_de_dados/aulas_praticas/BigData_na_pratica/TemperaturasGlobais.csv"))

#usando read.table
system.time(df_teste2 <- read.table("C:/Users/arnou/OneDrive/Documentos/ARNOULD/Data_Science_Academy/R_fundamentos_para_analise_de_dados/aulas_praticas/BigData_na_pratica/TemperaturasGlobais.csv"))

#usando fread() ... essa é bem mais rapida para carregamentos
?fread
system.time(df <- fread("C:/Users/arnou/OneDrive/Documentos/ARNOULD/Data_Science_Academy/R_fundamentos_para_analise_de_dados/aulas_praticas/BigData_na_pratica/TemperaturasGlobais.csv"))
head(df)
tail(df)

#criando subsets dos dados carregados
cidadesBrasil <- subset(df, Country == 'Brazil') #criando um subset co com dados do brasil
cidadesBrasil <- na.omit(cidadesBrasil) #omitindo os valores NA
head(cidadesBrasil)
nrow(df)
nrow(cidadesBrasil)
dim(cidadesBrasil)

#Preparação e organização

#Convertendo as datas
cidadesBrasil$dt <- as.POSIXct(cidadesBrasil$dt, format='%Y-%m-%d')
cidadesBrasil$Month <- month(cidadesBrasil$dt) #criou a coluna month
cidadesBrasil$Year <- year(cidadesBrasil$dt) #criou a coluna year

#carregando subsets
#Palmas
plm <- subset(cidadesBrasil, City == 'Palmas')
plm <- subset(plm, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012))

# curitiba
crt <- subset(cidadesBrasil, City == 'Curitiba')
crt <- subset(crt, Year %in% c(1796,1846,1896,1946,1996,2012))

#recife
recf <- subset(cidadesBrasil, City == 'Recife')
recf <- subset(recf, Year %in% c(1796,1846,1896,1946,1996,2012))

#construindo os plot
p_plm <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) + 
  geom_smooth(se = FALSE, fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês") +
  ylab("Temperatura") +
  scale_color_discrete("") +
  ggtitle("Temperatura média ao longo dos anos em Palmas") +
  theme(plot.title = element_text(size = 18))

p_crt <- ggplot(crt, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mes")+
  ylab("Temperatura") +
  scale_color_discrete("") +
  ggtitle("Temperatura Media ao longo dos anos em Curitiba") +
  theme(plot.title = element_text(size = 18))

p_recf <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mes")+
  ylab("Temperatura") +
  scale_color_discrete("") +
  ggtitle("Temperatura Media ao longo dos anos em Recife") +
  theme(plot.title = element_text(size = 18))

p_crt
p_plm
p_recf


















