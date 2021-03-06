#Importando os dados a serem trabalhados 
dados = read.csv(choose.files(), sep = ";" , header = T)

#Mostrando os 6 primeiros registros
head(dados)

#Omitindo os NA 
dadosnorm <- na.omit(dados)

#Averigando medidas b�sicas das variaveis acelera��o e peso
summary(dadosnorm$acelera��o)
summary(dadosnorm$peso)

#Gerando um boxplot acelera��o e peso
boxplot(dadosnorm$acelera��o)
boxplot(dadosnorm$peso)


#Verificando a correla��o entre acelera��o e peso 
cor(dadosnorm$acelera��o, dadosnorm$peso)

#Criando meu modelo de Regress�o linear 
modelo = lm(acelera��o ~ peso, data=dadosnorm)

#Plotando grafico de dispers�o 
plot(acelera��o ~ peso, data=dadosnorm)

#Linha de melhor ajuste
abline(modelo)

#Predizendo 
predict(modelo, data.frame(peso=4100))
