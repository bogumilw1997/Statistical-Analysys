file <- 'gala_data.txt'

df <- read.table(file, header = T)

print(head(df))

attach(df)
     
hist(Area[Area <= quantile(Area, 0.75)], 
     main="Histogram of Area", 
     xlab="Area", 
     ylab = 'Frequency', 
     breaks=3
)

boxplot(Species[Area > 1 & Area < 25])

