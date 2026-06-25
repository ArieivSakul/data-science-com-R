setwd("C:/Users/lukas/OneDrive/Desktop/Data Science")
df<- read.csv("Sal_anos_sx.csv",sep = ';')
df
med_sal <- median(df$Salario)
med_sal
sd_sal <- sd(df$Salario)
sd_sal

med_anos <- median(df$Anos_estudo)
med_anos

sd_anos <- sd(df$Anos_estudo)
sd_anos

data=read.csv('Sal_anos_sx.csv')

print(data)

plot(x = data$Anos_estudo,y = data$Salario,
     xlab = "Anos",
     ylab = "Salario",
     main = "Plot"
)
