#Lista 1 de Exercicios

#Exerc?cio 4) Fun??o que retorna o maior valor de uma lista com 10 n?meros

#Passo 1: Gerar a lista

lista = round(runif(10,0,100), 0)

#Ps: Escolha arbitr?ria de um intervalo entre 0 e 100 e arredondamento dos n?meros obtidos para um resultado mais esteticamente agrad?vel.

#Passo 2: Cria??o da fun??o, com a vari?vel "a" respresentando a lista num?rica a ser analizada.

maiorvalor = function(a){
  for(i in a){
    maior = 0
    if(i>maior){
      maior = i
    }
  }
  print(maior)
}

#Passo 3: Aplica??o da fun??o que retornar? o maior valor.

maiorvalor(lista)




#Exerc?cio 5) Fun??o que retorna os 50 primeiros valores da sequ?ncia de Fibonacci

#Disclaimer: Algumas inspiracoes para a criacao dessa funcao vieram de https://www.w3resource.com/r-programming-exercises/basic/r-programming-basic-exercise-5.php

#Passo 1: Criar a fun??o, que gera uma lista num?rica com "n" termos e em sequ?ncia utiliza os dois primeiros termos de Fibonacci para determinar todos oa outros termos.

funcaofibonacci <- function(n){
  fibonacci = numeric(n)
  fibonacci[1]=0
  fibonacci[2]=1
  for(i in 3:n){
    fibonacci[i]=fibonacci[i-2]+fibonacci[i-1]
  }
  print(fibonacci)
}

#Passo 2: Testar a fun??o com n = 50

funcaofibonacci(50)


#Exercicio 6) Achar a raz?o entre dois n?meros consecutivos conforme a sequencia de Fibonacci cresce

#Passo 1: Criar uma fun??o que retorne essa raz?o dada uma lista com n-valores da sequencia de fibonacci 

ratiofibonacci <- function(n){
  fibonacci = numeric(n)
  fibonacci[1]=0
  fibonacci[2]=1
  for(i in 3:n){
    fibonacci[i]=fibonacci[i-2]+fibonacci[i-1]
  }
  ratio = numeric(n-2)
  for(i in 3:n){
    ratio[i-2] = fibonacci[i]/fibonacci[i-1]
  }
  print(ratio)
}

#Ps1: A lista das raz?es contem n-2 valores, pois n?o ? possivel achar raz?es para dois primeiros valores da sequencia

#Passo 2: Aplicar a funcao ratiofibonacci 

ratiofibonacci(50)

#Passo Opcional: Plotar a sequencia de raz?es encontrada para melhor visualiza??o

plot(ratiofibonacci(50))

#Conclusao; Conforme a s?rie vai crescendo a raz?o encontrada tende ao valor 1.618034, tambem conhecido como o golden ratio, uma constnte matem?tica irracional.