# Web Scraping

# Pacotes R para Web Scraping
# RCurl
# httr
# XML
# rvest

# Pacote rvest - util para quem nao conhece HTML e CSS
install.packages('rvest')
library(rvest)

# Coletando a url do filme: 13 Horas - Os Soldados Ocultos de Benghazi
?read_html
filme <- read_html("http://www.imdb.com/title/tt4172430/")
class(filme)
head(filme)

# Coletando a classificacao do filme
?html_node
?html_text

filme %>% 
  html_node("strong span") %>%
  html_text() %>%
  as.numeric()

# Coletando o elenco do filme
filme %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()

# Gravando em formato tablea
filme %>%
  html_nodes("table") %>%
  .[[3]] %>%
  html_table()


# Coletando a previsao metereologica
pagina <- read_html("http://forecast.weather.gov/MapClick.php?lat=42.31674913306716&lon=-71.42487878862437&site=all&smap=1#.VRsEpZPF84I")
previsao <- html_nodes(pagina, "#detailed-forecast-body b , .forecast-text")
texto <- html_text(previsao)
paste(texto, collapse = " ")


# Formatando os dados de uma pagina web
library(rvest)
library(stringr)
library(tidyr)

# Extraindo a pagina web
url <- 'http://espn.go.com/nfl/superbowl/history/winners'
pagina <- read_html(url)

# Extraindo a tag "table" do código HTML e convertendo para dataframe
tabela <- html_nodes(pagina, 'table')
class(tabela)
tab <- html_table(tabela)[[1]]
class(tab)
head(tab)

# Removendo as duas primeiras linhas e adicionando nomes as colunas
tab <- tab[-(1:2), ]
head(tab)
names(tab) <- c("number", "date", "site", "result")
head(tab)

# Convertendo de algarismos romanos para numeros inteiros
tab$number <- 1:50
tab$date <- as.Date(tab$date, "%B. %d, %Y")
head(tab)

# Dividindo as colunas em 4 colunas
tab <- separate(tab, result, c('winner', 'loser'), sep = ', ', remove = TRUE)
head(tab)

pattern <- " \\d+$"
tab$winnerScore <- as.numeric(str_extract(tab$winner, pattern))
tab$loserScore <- as.numeric(str_extract(tab$loser, pattern))
tab$winner <- gsub(pattern, "", tab$winner)
tab$loser <- gsub(pattern, "", tab$loser)
head(tab)

# Grava o resultado no arquivo csv
write.csv(tab, 'superbowl.csv', row.names = F)
dir()


  