#Tipos de dados em R

#numeric - todos os dados criado em R sao do tipo numerico
num = 2.5
num

num2 = 4
num2

class(num)

#Conversao de tipos numeric
is.integer(num2)
y = as.integer(num2)
class(y)

as.integer('4.27')
as.integer("JOE")
as.integer('JOE')
as.integer(TRUE)

#Character
char1 = 'A'
char1

char2 = "bolha"
char2


#Complex
compl = 2.5 +4i
compl
class(compl)

sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))

#Logic
x = 1; y = 2
z = x>y
z
class(z)

#opreações com R
5/0 #retorna infinito
0/5