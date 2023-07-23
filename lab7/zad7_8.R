# zad 7.8
# a)
# H0: dane pochodza z rozkladu Gamma
# H1: dane nie pochodza z rozkladu Gamma
library(MASS)
df = read.table(file.choose(), header = T)

est <- fitdistr(df$czas, densfun = 'gamma', start = list(shape = 4.5, rate = 4), lower = c(0,0))

shape.est <- est$estimate[1]
rate.est <- est$estimate[2]

n <- length(df$czas)

# n = 100, tworzymy 10 klas o równych prawdopodobienstwach

konce.przedzialow <- qgamma(seq(0,1,length.out=10), shape = shape.est, rate =rate.est)

licznosci.klas <- table(cut(x=df$czas,breaks=konce.przedzialow))

pj0 <- rep(1/9, 9)

# Mo¿emy przeprowadzic chisq.test
chisq.test(x = licznosci.klas, p = pj0)
# X-squared = 5.3

qchisq(1 - 0.05, 9 - 1 - 2)
# W = <12.59159, +inf)
# Statystyka testowa nie nale¿y do zbioru krytycznego, wiec nie ma podstaw do odrzucenia H0.
# Odp. Dane s¹ z rozk³adu Gamma


# b)
# H0: dane pochodza z rozkladu Gamma(4.5, 4)
# H1: dane nie pochodza z rozkladu Gamma(4.5, 4)

shape.est <- 4.5
rate.est <- 4

konce.przedzialow <- qgamma(seq(0,1,length.out=11), shape = shape.est, rate =rate.est)

licznosci.klas <- table(cut(x=df$czas,breaks=konce.przedzialow))

pj0 <- rep(1/10, 10)

# Mo¿emy przeprowadzic chisq.test
chisq.test(x = licznosci.klas, p = pj0)
# p-value = 0.5341 > 0.05, wiec nie ma podstaw do odrzucenia H0.
# Odp. Dane s¹ z rozk³adu Gamma
