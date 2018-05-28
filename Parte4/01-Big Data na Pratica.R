# Big Data na Pratica - Buscando Dados para Analise Financeira

# http://www.quantmod.com

# Instalar e carregar os pacotes
install.packages("quantmod")
install.packages("xts")
install.packages("moments")
library(quantmod)
library(xts)
library(moments)

# Selecao do periodo de analise
startDate = as.Date("2018-01-21")
endDate = as.Date("2018-05-20")

# Download dos dados do periodo
?getSymbols
getSymbols("PETR4.SA", src = "yahoo", from = startDate, to = endDate)

# Checando o tipo de dado retornado
class(PETR4.SA)
is.xts(PETR4.SA)

# Mostra os primeiros registros para as acoes da Petrobras
head(PETR4.SA)

# Analisando os dados de fechamento 
PETR4.SA.Close <- PETR4.SA[, "PETR4.SA.Close"]
is.xts(PETR4.SA.Close)
?Cl
head(Cl(PETR4.SA),5)

# Agora, vamos plotar o grafico da Petrobras
# Grafico de candlestick da Petrobras
?candleChart
candleChart(PETR4.SA)

# Plot do fechamento
plot(PETR4.SA.Close, main = "Fechamento Diario das a�oes da Petrobras",
     col = "red", xlab = "Data", ylab = "Pre�o", major.ticks = 'months',
     minor.ticks = FALSE)

# Adicionado as bandas de bollinger ao grafico, com media de 20 periodos e 2 desvios
# Bollinger Band
# Como o desvio padrao é uma medida de volatilidade, 
# Bollinger Bands ajustam-se às condicoes de mercado. Mercados mais volateis, 
# possuem as bandas mais distantes da media, enquanto mercados menso volateis possuem as
# bancas mais proximas da media
?addBBands
addBBands(n = 20, sd = 2)

# Adicionando o indicador ADX, média 11 do tipo exponencial
?addADX
addADX(n = 11, maType = "EMA")

# Calculando logs diarios
?log
PETR4.SA.ret <- diff(log(PETR4.SA.Close), lag = 1)

# Remove valores NA na prosicao 1
PETR4.SA.ret <- PETR4.SA.ret[-1] 

# Plotar a taxa de retorno
plot(PETR4.SA.ret, main = "Fechamento Diário das Ações da Petrobras",
     col = "red", xlab = "Data", ylab = "Retorno", major.ticks = 'months',
     minor.ticks = FALSE)

# Calculando algumas medidas estatisticas
statNames <- c("Mean", "Standard Deviation", "Skewness", "Kurtosis")
PETR4.SA.stats <- c(mean(PETR4.SA.ret), sd(PETR4.SA.ret), skewness(PETR4.SA.ret), kurtosis(PETR4.SA.ret))
names(PETR4.SA.stats) <- statNames
PETR4.SA.stats

# Salvando os dados em um arquivo .rds (arquivo em formato binário do R)
getSymbols("PETR4.SA", src = 'yahoo')
saveRDS(PETR4.SA, file = "PETR4.SA.rds") # Salva os dados em formato binario
Ptr = readRDS("PETR4.SA.rds")
dir()
head(Ptr)








