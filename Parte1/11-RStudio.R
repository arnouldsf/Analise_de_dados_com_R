#Estruturas de controle

#if-else
x = 25
if(x<30){
  "Este numero é menor que 30"
}
  
#Else
if(x<7){
  "Este numero é menor que 7"
}else{
  "Este numero não é menor que 7"
}

#Comando podem ser aninhados
if(x<7){
  "Este numero é menor que 7"
}else if(x == 7){
  "Este numero é igual a 7"
}else{
  "Este numero não é menor que 7"
}

#ifelse
x=9
ifelse(x<6, "Correto", "errado")

#Estruturas if dentro de funções
func1 <- function(x,y){
  ifelse(y<7, x+y, "nao encontrado")
}

func1(4,2)
func1(40,7)

#rep
rep(rnorm(10),5)

#repeat
x=1
repeat{
  x = x+3
  if (x>99)
    break
  print(x)
}


#loop for
for(i in 1:20){
  print(i)
}
for(q in rnorm(10)){
  print(q)
}

#ignorando alguns elementos dentro do loop
for(i in 1:22){
  if(i == 13 | i == 15){
    next()
  }
  print (i)
}

#interromper o loop
for(i in 1:22){
  if(i == 13){
    break
  }
  print(i)
}

#loop while
x = 1
while(x <= 5){
  print(x)
  x = x+1
}


































