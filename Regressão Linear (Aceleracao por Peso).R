#Importando os dados a serem trabalhados 
dados = read.csv(choose.files(), sep = ";" , header = T)

#Mostrando os 6 primeiros registros
head(dados)

#Omitindo os NA 
dadosnorm <- na.omit(dados)

#Averigando medidas básicas das variaveis aceleração e peso
summary(dadosnorm$aceleração)
summary(dadosnorm$peso)

#Gerando um boxplot aceleração e peso
boxplot(dadosnorm$aceleração)
boxplot(dadosnorm$peso)


#Verificando a correlação entre aceleração e peso 
cor(dadosnorm$aceleração, dadosnorm$peso)

#Criando meu modelo de Regressão linear 
modelo = lm(aceleração ~ peso, data=dadosnorm)

#Plotando grafico de dispersão 
plot(aceleração ~ peso, data=dadosnorm)

#Linha de melhor ajuste
abline(modelo)

#Predizendo 
predict(modelo, data.frame(peso=4100))
