#Ler banco de dados
imoveis <- read.csv2('imoveis.csv')
attach(imoveis)

#Estrutura do banco de dados
head(imoveis)
str(imoveis)
summary(imoveis)
View(imoveis)

#Renomeando algumas variaveis e alterando o tipo da variavel
names(imoveis)[4] <- "itens" 
names(imoveis)[5] <- "impostoanual"
imoveis$metragem <- as.numeric(imoveis$metragem) #Meu R estava lendo esta variavel como texto

#Analise descritiva - variaveis quantitativas

#Preco
mean(imoveis$preco)
min(imoveis$preco)
max(imoveis$preco)
median(imoveis$preco)
sd(imoveis$preco)

#Metragem
mean(imoveis$metragem)
min(imoveis$metragem)
max(imoveis$metragem)
median(imoveis$metragem)
sd(imoveis$metragem)

#Idade
mean(imoveis$idade)
min(imoveis$idade)
max(imoveis$idade)
median(imoveis$idade)
sd(imoveis$idade)

#Itens
mean(imoveis$itens)
min(imoveis$itens)
max(imoveis$itens)
median(imoveis$itens)
sd(imoveis$itens)

#Impostoanual
mean(imoveis$impostoanual)
min(imoveis$impostoanual)
max(imoveis$impostoanual)
median(imoveis$impostoanual)
sd(imoveis$impostoanual)

#Grafico histograma

hist(imoveis$preco, main = "Histograma do Preço", xlab = "Preço")

#Grafico dispersao

plot(imoveis$metragem, imoveis$impostoanual, main = "Dispersão do Imposto versus Metragem", xlab = "Metragem", ylab = "Imposto", pch = 19, col = "#270095")  
