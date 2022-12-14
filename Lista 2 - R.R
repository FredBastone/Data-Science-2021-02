#Baixar o Arquivo

gdp <- read.csv2("C:/Users/Dell/Downloads/GDP_pc_Maddison_2020.csv")
View(gdp)

#Exerc?cio 3: Criar o Dataframe

ratio = gdp['year']
}
for(country in names(gdp)){
  if(country != 'year' ){
    ratio = cbind(ratio, gdp[country]/gdp['UnitedStates'])
  }
}

#Exercicio 4: Lista de paises que j? tiveram a raz?o do exerc?cio anterio maior do que 0.5

for(country in names(ratio)){
  ifelse(country != 'year' & country != 'UnitedStates' & ratio[, country] >= 0.5, print(country), NA)}

#Ecerc?cio 5: Raz?o M?dia de cada Pa?s

  
ratio50 = ratio
for(country in names(ratio)){
   for(y in 1:69){
   ifelse(country != 'year' & country != 'UnitedStates' & ratio[y, country] >= 0.5, NA, ratio50[y,country]<-NA)
   }}

for(pais in names(ratio50)){
  if(pais != 'year' & pais != 'UnitedStates'){
    print(colMeans(ratio50[pais],na.rm = TRUE))}}