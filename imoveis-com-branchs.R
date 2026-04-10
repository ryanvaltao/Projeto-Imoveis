#-=-=-= LEITURA DO BANCO DE DADOS =-=-=-
 dados = read.csv("imoveis.csv", header = TRUE, sep = ";")
 
#-=-=-= ESTRUTURA DO BANCO DE DADOS =-=-=-
 str(dados)
head(dados) 
View(dados)

#-=-=-= GRAFICOS =-=-=-

hist(dados$metragem,main = "Histograma das metragens",xlab = "Metragem",col = "blue",border = "black")
boxplot(dados$preco,main = "Boxplot do Preço",ylab = "Preço",col = "lightgreen")
plot(dados$metragem, dados$preco,main = "Preço vs Metragem",xlab = "Metragem",ylab = "Preço",pch = 19,col = "#53abff")

#-=-=-= MEDIDAS =-=-=-

mediana_imposto_anual = median(dados$imposto_anual)
media_imposto_anual = mean(dados$imposto_anual)
desvio_imposto_anual = sd(dados$imposto_anual)