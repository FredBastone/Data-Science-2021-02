#Lista 1 de Exercicios

#Exercício 4) Função que retorna o maior valor de uma lista com 10 números

#Passo 1: Gerar a lista

lista = round(runif(10,0,100), 0)

#Ps: Escolha arbitrária de um intervalo entre 0 e 100 e arredondamento dos números obtidos para um resultado mais esteticamente agradável.

#Passo 2: Criação da função, com a variável "a" respresentando a lista numérica a ser analizada.

maiorvalor = function(a){
  for(i in a){
    maior = 0
    if(i>maior){
      maior = i
    }
  }
  print(maior)
}

#Passo 3: Aplicação da função que retornará o maior valor.

maiorvalor(lista)




#Exercício 5) Função que retorna os 50 primeiros valores da sequência de Fibonacci

#Disclaimer: Algumas inspiracoes para a criacao dessa funcao vieram de https://www.w3resource.com/r-programming-exercises/basic/r-programming-basic-exercise-5.php

#Passo 1: Criar a função, que gera uma lista numérica com "n" termos e em sequência utiliza os dois primeiros termos de Fibonacci para determinar todos oa outros termos.

funcaofibonacci <- function(n){
  fibonacci = numeric(n)
  fibonacci[1]=0
  fibonacci[2]=1
  for(i in 3:n){
    fibonacci[i]=fibonacci[i-2]+fibonacci[i-1]
  }
  print(fibonacci)
}

#Passo 2: Testar a função com n = 50

funcaofibonacci(50)


#Exercicio 6) Achar a razão entre dois números consecutivos conforme a sequencia de Fibonacci cresce

#Passo 1: Criar uma função que retorne essa razão dada uma lista com n-valores da sequencia de fibonacci 

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

#Ps1: A lista das razões contem n-2 valores, pois não é possivel achar razões para dois primeiros valores da sequencia

#Passo 2: Aplicar a funcao ratiofibonacci 

ratiofibonacci(50)

#Passo Opcional: Plotar a sequencia de razões encontrada para melhor visualização

plot(ratiofibonacci(50))

#Conclusao; Conforme a série vai crescendo a razão encontrada tende ao valor 1.618034, tambem conhecido como o golden ratio, uma constnte matemática irracional.