# X - zmienna losowa opisujaca grup� krwi

# H0: X ma rozk�ad taki jak wa zadaniu
# H0: X nie ma rozk�adu jak w zadaniu

p <- c(0.4, 0.4, 0.1, 0.1)

x <- c(36, 42, 14, 8)

n <- 100

min(n*p)
# Przy za�o�eniu H0 Mo�na przybli�y� rozk�ad statystyki testowej rozk�adem chisq 

chisq.test(x = x, p = p)

# p-value = 0.4753 > 0.05 wi�c nie ma podstaw do odrzucenia H0
# Odp. X ma podany rozk�ad.

