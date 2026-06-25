library(ggvis)

iris <- read.csv(url("https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), header = FALSE)

# Load the iris dataset
data(iris)

# Calculate the correlation matrix
cor_matrix <- cor(iris[,1:4])

# Print the correlation matrix
print(cor_matrix)

head(iris)

#nomes das colunas
names(iris) <- c("sepal.length","sepal.width", "petal.length", "petal.width", "Species")

head(iris)

str(iris)

iris %>% ggvis(~sepal.length, ~sepal.width, fill = ~Species) %>% layer_points()
iris %>% ggvis(~petal.length, ~petal.width, fill = ~Species) %>% layer_points()
iris %>% ggvis(~petal.length, ~sepal.width, fill = ~Species) %>% layer_points()

cor(iris$petal.length, iris$petal.width)

x=levels(factor(iris$Species))

# % por class
round(prop.table(table(iris$Species))*100, digits = 1)

summary(iris)
hist(iris$sepal.length)

# Load the corrplot package
library(corrplot)

# Calculate the correlation matrix
cor_matrix <- cor(iris[,1:4])

# Create a correlogram
corrplot(cor_matrix, method = "circle")
