#1.3 

waga <- c(60, 72, 57, 90, 95, 72)
wzrost <- c(1.75, 1.8, 1.65, 1.9, 1.74, 1.91)

df <- data.frame(waga, wzrost)

df$bmi <- df$waga/(df$wzrost^2)

print(df)

df$wzrost[df$bmi >= 20.7 & df$bmi < 26.5]


#1.2
path = "/Users/bogum/Desktop/mgr_studia/semestr2/WdWS/lab1/gala_data.txt"

file <- 'gala_data.txt'

df <- read.table(file, header = T)

head(df)
