#Autor: Cecilia Heinen
# 04/09/2017
# usar ctrl + enter para execução


# operações
1+1
3*4
2-(4*2)/5
4^2
21%/%4
21%%4
1:10

# plotagem
plot(1:10)
rnorm(10)
hist(rnorm(1000))


# variáveis
x<-100
y<-23

x+y
x*y
x/y


# vetores
# concatena os valores e atribui à variável "vetor"
vetor<-c(1,4,5,10,2,x,y)

numero<-c(546.90,10,789)

inteiro<-c(1L,98L) # cast automatico para nro

complexo<-c(20i,2+9i) 

texto<-c("meu","vetor","teste")


# casting
as.character(567)

# TRUE ->1,FALSE->0
as.numeric("A"=="A")

as.numeric(texto)

as.numeric("1234")

# Struture
str(x)
str(y)
str(vetor)
str(numero)
str(inteiro)
str(complexo)
str(texto)
str(logico)
str(1==1)

length(x)
length(y)
length(vetor)
length(texto)

length(1:10)


# Funções matemáticas
x <- c(1, 3, -5, 10)
x
# valor absoluto
abs(x)
# exponencial em e
exp(x)
# raiz quadrada
sqrt(y)
# fatorial
factorial(3)
# análise combinatória
choose(20,2)


# Funçoes que operam com todos os valores do vetor

x
#media
mean(x)
#somatoria
sum(x)
#produtória
prod(x)
#somatório cumulado
cumsum(x)
# produtório cumulado
cumprod(x)
# variância
var(x)
# desvio padrão
sd(x)
# mediana
median(x)
# mínimo
min(x)
# máximo
max(x)

# variança (usar no exercicio de altura e peso)
var(x)

#desvio padrao
sd(x)

#mediana
median(x)

#minimo
min(x)

#maximo
max(x)


1==0
1!=0
1>0
1<0
!1<0
1==1 & 1==0
1==1 | 1==0


###########################################################
####### agora vai começar

set.seed(1)

horas_trabalhadas<-rnorm(1000,8,0.5)

valor_por_horas<-rnorm(1000,30,2)

horas_trabalhadas

valor_por_horas


#######
# veja a estrutura dos vetores. Qual sua classe?
str(horas_trabalhadas)
str(valor_por_horas)
class(horas_trabalhadas)
class(valor_por_horas)


# quantas observações cada vetor tem?
length(horas_trabalhadas)
length(x)
length(valor_por_horas)

#quais os valores máximos e mínimos?
max(horas_trabalhadas)
min(horas_trabalhadas)

max(valor_por_horas)
min(valor_por_horas)

max(horas_trabalhadas*valor_por_horas)
min(horas_trabalhadas*valor_por_horas)

# crie um vetor com o valor recebido por dia.Encontre o minimo e o máximo
maxmin<-c(max(horas_trabalhadas*valor_por_horas),min(horas_trabalhadas*valor_por_horas))

# qual o valor total recebido no periodo?
sum(horas_trabalhadas*valor_por_horas)


getwd()


mtcars

write.csv2(mtcars,"mtcars.csv")
str(mtcars)


carros<-read.csv("mtcars.csv",dec=",",sep=";")

censo<-read.csv2("data/Censo.csv",stringsAsFactors = FALSE)

censo

str(censo)

names(censo)

View(censo)
length(censo)

nrow(censo)

#verifica pelo indice
censo[3]

#pelo nome da coluna
censo$Nome

#outra maneira de acesso pelo nome
censo["Nome"]

# varias colunas ao mesmo tempo
censo[c(2,3)]

censo[c("Nome","CPF")]

min(censo$Altura.cm)

max(censo$Altura.cm)


altura<-censo$Altura.cm
summary(altura)
media.altura<-mean(altura)
desvio.altura<-sd(altura)
altura>media.altura+4*desvio.altura
gigantes<-altura[altura>media.altura+4*desvio.altura]
gigantes






# transformando texto em data
d <-as.Date(censo$DataNasc, format = "%d/%m/%y" )
dlt<-as.POSIXlt(d)
bool<-year(d)>2000 # deu pau aqui
dlt$year[bool] <- dlt$year[bool] - 100
censo.df$DataNasc <- as.Date(dlt)
str(censo.df)

min(censo$DataNasc)

max(censo$DataNasc)
