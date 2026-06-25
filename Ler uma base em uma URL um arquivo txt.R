#-----------------------------------------------------------------------

# Dados de carros Duster à venda no webmotors em 26/03/2014.

# Importa a tabela de dados da web.

url <- "http://www.leg.ufpr.br/~walmes/data/duster_venda_260314.txt"

dus <- read.table(file = url,
                  
                  header = TRUE,
                  
                  sep = "\t",
                  
                  encoding = "utf-8")

str(dus)

# Quantidade de NA em cada coluna.

apply(dus, MARGIN = 2, FUN = function(x) sum(is.na(x)))

dus

df <- na.omit(dus)

apply(df, MARGIN = 2, FUN = function(x) sum(is.na(x)))

head(df)

df