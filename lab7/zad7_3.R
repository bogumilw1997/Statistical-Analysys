# H0: dane s� z rozk�adu binom(3, 0.5)
# H1: dane nie s� z tego rozk�adu

p <- dbinom(0:3, 3, 0.5)

licznosci <- c(24, 73, 77, 26)
n <- sum(licznosci)

min(n * p)

# >= 10 wi�c mo�na stosota� chisq.test

chisq.test(x = licznosci, p = p)

# p-value = 0.9797 > 0.05, nie ma podstaw do odrzucenia H0

# Odp. Generator dzia�a prawid�owo

