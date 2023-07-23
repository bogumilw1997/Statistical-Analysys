# H0: dane s¹ z rozk³adu binom(3, 0.5)
# H1: dane nie s¹ z tego rozk³adu

p <- dbinom(0:3, 3, 0.5)

licznosci <- c(24, 73, 77, 26)
n <- sum(licznosci)

min(n * p)

# >= 10 wiêc mo¿na stosotaæ chisq.test

chisq.test(x = licznosci, p = p)

# p-value = 0.9797 > 0.05, nie ma podstaw do odrzucenia H0

# Odp. Generator dzia³a prawid³owo

