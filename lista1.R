#Resolução da Lista 1 - MCCD

# Questão 1
#a) vetor com a sequência de valores (-3, -2, -1, 0, 1, 2, 3)
vetorA <- c(-3:3)

# vetor com a sequencia de valores (2.4, 3.4, 4.4, 5.4, 6.4, 7.4, 8.4, 9.4, 10.4)
vetorB <- c(2.4:10.4)

# vetor com todos os números ímpares de 1 a 80
vetorC <- seq(from = 1, to = 80, by = 2)

# vetor de seqüência repetida (4, 4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1)
vetorD <- rep(c(4:1), each = 3)

#  vetor de elementos repetidos (1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3)
vetorE <- rep(c(1:3), times = 4)

# vetor alfanumérico [1] “Parana” “Sao Paulo” “Minas Gerais”
vetorF <- c("Parana", "Sao Paulo", "Minas Gerais")

# vetor indicador de blocos
vetorG <- factor(c("Bloco_1", "Bloco_2", "Bloco_3"))

#Questão 2
# Mostre comando(s) para construir uma matriz 10x10 tal que as entradas são iguais a ixj, sendo i a linha e j a coluna

matriz <- matrix(
  nrow = 10,
  ncol = 10
)

for (i in 1:10){
  for (j in 1:10){
    matriz[i,j] <- i * j
  }
}

# Questão 3
# Construa um data-frame com uma tabela com três colunas: x, x^2 e exp(x) com x variando de 0 a 50
x <- c(0:50)

df3 <- data.frame(
  x = x,
  x2 = x^2,
  exp = exp(x)
)

# Questão 4
q4 <- 1:100
# a)
q4a <- 1/q4a
print(sum(q4a))

# b)
q4b <- 1/(20 * q4 + 2)
print(sum(q4b))

# c)
q4c <- (-1)^(q4 + 1) / q4
print(sum(q4c))

# Questão 5
data("ChickWeight")

dieta2 <- subset(ChickWeight, Diet == 2, select = c(weight, Time))

dieta_e_tempo2 <- subset(ChickWeight, Diet == 2 & Time == 2, select = c(weight, Time))

media <- mean(dieta_e_tempo2$weight)
print(media)

# DESAFIO -> FAZER A QUESTÃO ACIMA COM TIDYVERSE
library(tidyverse)

dieta_tempo_tidy <- ChickWeight |> 
  filter(Diet == 2, Time == 2) |>
  select(c(weight, Time))

media_tidy <- dieta_tempo_tidy |>
  summarise(
    media_pesos = mean(weight)
  )
print(media_tidy)
