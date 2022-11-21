ggplot(war1, aes(x = Group.1, y = batdths))+theme_bw()+scale_y_continuous(labels = scales::comma)+geom_line(size = .7)+scale_x_continuous(breaks=seq(1800, 2010, 10))+labs(title = "Mortes em Batalha por Ano", x = "Ano", y = "Mortos em Batalha")

ggplot(IRIS, aes(y = Largura_Sepala, x = Especie))+geom_boxplot()+theme_bw()+ scale_color_grey()+scale_y_continuous(breaks=seq(0, 6, 0.2))+labs(title = "Boxplot de Largura das Sépalas por Espécie",x = "Espécies", y="Largura da Sépala")+ylim(0,6)

ggplot(war1, aes(x = Group.1, y = batdths))+theme_bw()+scale_y_continuous(labels = scales::comma)+geom_line(size = .7)+scale_x_continuous(breaks=seq(1800, 2010, 10))+labs(title = "Mortes em Batalha por Ano", x = "Ano", y = "Mortos em Batalha")+
  scale_y_continuous(breaks=seq(0,5000000, 250000))

irissetosa = IRIS[which(IRIS$Especie == "Iris-setosa"),]

irisversicolor = IRIS[which(IRIS$Especie == "Iris-versicolor"),]

irisvirsinica = IRIS[which(IRIS$Especie == "Iris-virginica"),]

t.test(irissetosa$Largura_Sepala,irisversicolor$Largura_Sepala)

t.test(irissetosa$Largura_Sepala,irisvirsinica$Largura_Sepala)

t.test(irisversicolor$Largura_Sepala,irisvirsinica$Largura_Sepala)