#-=-=-= LEITURA DO BANCO DE DADOS =-=-=-
 dados = read.csv("imoveis.csv", header = TRUE, sep = ";")
 
#-=-=-= ESTRUTURA DO BANCO DE DADOS =-=-=-
 str(dados)
head(dados) 
View(dados)

#-=-=-= GRAFICOS =-=-=-

#preencher na branch imoveis-graficos
#usar histograma, boxplot, dispersao, barras e densidade

#-=-=-= MEDIDAS =-=-=-

mediana_imposto_anual = median(dados$imposto_anual)
media_imposto_anual = mean(dados$imposto_anual)
desvio_imposto_anual = sd(dados$imposto_anual)