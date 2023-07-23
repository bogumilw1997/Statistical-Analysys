# H0: liczba czastek emitowanych przez pewna substancje promieniotwórcza w ciagu 10-ciu sekund jest zmienna losowa o rozk³adzie Poissona
# H1: liczba czastek emitowanych przez pewna substancje promieniotwórcza w ciagu 10-ciu sekund nie jest zmienna losowa o rozk³adzie Poissona

liczby.czastek <- c(0:5)
licznosci <- c(140, 280, 235, 200, 100, 45)

n <- sum(licznosci)
k <- length(liczby.czastek)

lambda.est <- sum(liczby.czastek * licznosci)/n

# estymator lambda = 1.975, srednia 

pj0 <- c(dpois(liczby.czastek[1:5], lambda = lambda.est), ppois(liczby.czastek[5], lambda = lambda.est, lower.tail = F))

min(n * pj0)

# n * pj0 >= 10 dla ka¿dej licznoœci wiêc dobry bêdzie chisq.test 

chisq.test(x = licznosci, p = pj0)

# X-squared = 9.7363

qchisq(1 - 0.1, k - 1 - 1)

# W = <7.77944, inf)
# X-squared nale¿y do zbioru krytycznego zatem odrzucamy H0

# Odp. Liczba czastek emitowanych przez pewna substancje promieniotwórcza w ciagu 10-ciu sekund nie jest zmienna losowa o rozk³adzie Poissona