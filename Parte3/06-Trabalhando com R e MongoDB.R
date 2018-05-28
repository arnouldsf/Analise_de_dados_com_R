# R e MongoDB

# Criando uma colecao no MongoDB
# ./mongoimport --db users --collection contatos --file /opt/DSA/RFundamentos/Parte3/zips.json

# RMongo
# RMongoDB
# Instalacao do Pacote
install.packages("rmongodb")
library(rmongodb)

# Criando a conexao
help("mongo.create")
mongo <- mongo.create()
mongo

# Checando a conexao
mongo.is.connected(mongo)

if(mongo.is.connected(mongo) == TRUE) {
  mongo.get.databases(mongo)
}

# Armazenando o nome de uma das colecoes
coll <- "users.contatos"

# Contando os registros em uma colecao
help("mongo.count")
mongo.count(mongo, coll)

# Buscando um registro em uma colecao
mongo.find.one(mongo, coll)

# Obtendo um vetor de valores distintos das chaves de uma colecao
res <- mongo.distinct(mongo, coll, "city")
head(res)

# Obtendo um vetor de valores distintos das chaves de uma colecao
# E gerando um histograma
pop <- mongo.distinct(mongo, coll, "pop")
hist(pop)

# Contando os elementos
nr <- mongo.count(mongo, coll, list('pop' = list('$lte' = 2)))
print( nr )

# Buscando todos os elementos
pops <- mongo.find.all(mongo, coll, list('pop' = list('$lte' = 2)))
head(pops, 2)

# Encerrando a conexao
mongo.destroy(mongo)

# Criando e validando um arquivo json
library(jsonlite)
json_arquivo <- '{"pop":{"$lte":2}, "pop":{"$gte":1}}'
cat(prettify(json_arquivo))

validate(json_arquivo)















