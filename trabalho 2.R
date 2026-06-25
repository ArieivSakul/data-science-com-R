#Trabalho 2
#Suponha que 𝑥, a medição da atividade biológica de uma droga, é
#normalmente distribuída com média de 26,2 e desvio padrão de 9,2. Qual é a
#probabilidade de obter uma leitura de atividade menor ou igual a 30,0

x = 30.0
sd = 9.2
mean = 26.2

z = (30 - 26.2)/9.2

pnorm(z)

atv = pnorm(z)

#Suponha que 𝑥 seja o rendimento para um processo em lote, com média de
#85 g / L e variância de 16 g2.L-2. Qual é a proporção dos valores de
#rendimento do lote que situam-se entre 75 e 95 g / L

z1 = (75 - 85) / (sqrt(16))
z2 = (95 - 85) / (sqrt(16))

#P(75 ≤ 𝑥 ≤ 95)

#probabilidade 1
p1 = pnorm(z1)
#probabilidade 2
p2 = pnorm(z2)

#tirando a diferença p/ achar rendimento
rend = p2 - p1

