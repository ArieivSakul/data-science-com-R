library(dplyr)

# Definir o tamanho do dataframe
n <- 100

# Gerar o dataframe com a função rnorm()
df <- data.frame(date = seq(as.Date("2023-01-01"), by = "day", length.out = n),
                 value = np.random.randn())

# Exibir as primeiras linhas do dataframe
head(df)
     