# Prova 1 - 17/11/2021

# Passo Preliminar 1: Baixar a base de dados 

library(readxl)
baseprova1 <- read_excel("C:/Users/Dell/Downloads/Files_Excel_Frederico_de_Meira_Bastone (1).xlsx")
View(baseprova1)

# Passo Preliminar 2: Incorporar o preço dos insumos e o preço total na base de dados

precos = c(0.39,0.91,0.29,0.63)

precoinsumo = baseprova1[c('Insumo1','Insumo2','Insumo3','Insumo4')]
for(i in 1:4){
  precoinsumo[i] = precoinsumo[i]*precos[i]
}

baseprecos = cbind(baseprova1[c('Mês', 'Dia','Medicamento')], precoinsumo, precototal = rowSums(precoinsumo))

#######################################################################################################

# Questão 3: Criar uma função que ache o mínimo para o mês de dezembro

# Passo 1: Filtrar a base (baseprecos) para o mês em questão

baseprecosdez = subset(baseprecos, Mês == 'Dezembro')

# Passo 2; Criar um subset de precos totais dentro da base anterior

precototaldez = baseprecosdez['precototal']

#Passo 3: Criar a funcao

minimo <- function(base){
  a = nrow(base)
  min = base[1,]
  for(i in 2:a){
    if(base[i,] < min){
      min = base[i,]
    }
  }
  print(min)
}

#Passo Final: Utilizar a função

minimo(precototaldez)

#Resultado: 

# 156.67

#Passo Opcional: Teste

teste <- function(base){
  if(minimo(base)==min(base)){
    print('correto')
  } else {
    print('incorreto')
  }
}

teste(precototaldez)

#Resultado: 

# [1] 156.67
# [1} "correto"

#################################################################

#Questao 5:

medpormes <- aggregate(baseprova1['Medicamento'], c(baseprova1["Medicamento"],baseprova1['Mês']), FUN= length)

# Explicação: Utilizada a função aggregate(), que agrega dados de acordo com um padrão definido pelo autor. 
# Os dados dos medicamentos foram agregados por si mesmos e pelos meses, a partir da funcao length que determina o numero de vezes que um tipo de dado aparece no texto.

# Resultado:

# Medicamento       Mês   Medicamento
# 1            A     Abril          38
# 2            B     Abril          49
# 3            C     Abril          35
# 4            D     Abril          37
# 5            A    Agosto          50
# 6            B    Agosto          38
# 7            C    Agosto          46
# 8            D    Agosto          50
# 9            A  Dezembro          30
# 10           B  Dezembro          47
# 11           C  Dezembro          41
# 12           D  Dezembro          39
# 13           A Fevereivo          23
# 14           B Fevereivo          42
# 15           C Fevereivo          44
# 16           D Fevereivo          39
# 17           A   Janeiro          48
# 18           B   Janeiro          39
# 19           C   Janeiro          45
# 20           D   Janeiro          40
# 21           A     Julho          45
# 22           B     Julho          46
# 23           C     Julho          37
# 24           D     Julho          56
# 25           A     Junho          40
# 26           B     Junho          45
# 27           C     Junho          45
# 28           D     Junho          47
# 29           A      Maio          46
# 30           B      Maio          47
# 31           C      Maio          34
# 32           D      Maio          43
# 33           A     Março          34
# 34           B     Março          42
# 35           C     Março          47
# 36           D     Março          38
# 37           A  Novembro          34
# 38           B  Novembro          43
# 39           C  Novembro          47
# 40           D  Novembro          39
# 41           A   Outubro          46
# 42           B   Outubro          38
# 43           C   Outubro          24
# 44           D   Outubro          37
# 45           A  Setembro          33
# 46           B  Setembro          51
# 47           C  Setembro          54
# 48           D  Setembro          41

#Questao 6:

custoinsumos <- aggregate(baseprecos[c('Insumo1', 'Insumo2', 'Insumo3','Insumo4','precototal')], baseprecos['Medicamento'], sum)

# Explicacao: A mesma funcao aggregate utilizada.
# As colunas de do preco de insumos e a do preco total sao agregadas de acordo com o tipo de medicamento e a funcao sum() que soma os valores dos dados
  
# Resultado:
#   
#   Medicamento  Insumo1   Insumo2  Insumo3  Insumo4 precototal
# 1           A 17433.00 105760.20 20068.00 59502.87   202764.1
# 2           B 30136.47  48007.05 30429.41 82413.45   190986.4
# 3           C 48163.05  43384.25 28585.88 47168.10   167301.3
# 4           D 48539.40  68697.72 14530.45 63052.92   194820.5