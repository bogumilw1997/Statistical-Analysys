
dane33 <- read.table(file.choose(), header = T)
typeof(dane32[[3]])

data <- dane32$WeightInitial

#a)

#H0: sig^2 = 20
#H1: sig^2 != 20

statystyka <- (length(data) - 1) * var(data)/ 20

cat('statystyka:', statystyka)

qchisq(0.05, 39)
qchisq(0.95, 39)

# zbior krytyczney W = (0, 25.69539> + <54.57223, +inf)
# statystyka nale¿y do W zatem odrzucamy H0

# Odp. Nie mo¿na przyj¹æ ¿e warancja wynosi 20 kg^2

#b)

# H0: sig = 3, var = 9
# H1: sig > 3, var > 9

statystyka2 <- (length(data) - 1) * var(data)/ 9

cat('statystyka:', statystyka2)

qchisq(0.9, 39)

# zbior krytyczney W = <50.65977, +inf)

# statystyka nale¿y do W zatem odrzucamy H0

# Odp. Mo¿na przyj¹æ ¿e ochylenie standardowe przekracza 3 kg



