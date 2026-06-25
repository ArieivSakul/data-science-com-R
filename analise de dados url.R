data_file = 'http://openmv.net/file/six-point-board-thickness.csv'
data_file
df<-read.csv(data_file)
head(df)
tail(df)
summary(df)
plot(df$Pos1, type='l')
plot(df$Pos2, type='l')
plot(df$Pos3, type='l')
plot(df$Pos4, type='l')
plot(df$Pos5, type='l')

boxplot(df[,2:7])

all_f <- df[300:400, 2:7]
boxplot(all_f, y_lab="Thickness [mils]")

df2<-df
df2[300,2]<-NA
df2[301,3]<-NA
df1 <- df2[is.na(df2)]
df1
sum(is.na(df2))

