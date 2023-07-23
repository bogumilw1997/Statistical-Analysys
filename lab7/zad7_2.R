# X - zmienna losowa opisujaca grupê krwi

# H0: X ma rozk³ad taki jak wa zadaniu
# H0: X nie ma rozk³adu jak w zadaniu

p <- c(0.4, 0.4, 0.1, 0.1)

x <- c(36, 42, 14, 8)

n <- 100

min(n*p)
# Przy za³o¿eniu H0 Mo¿na przybli¿yæ rozk³ad statystyki testowej rozk³adem chisq 

chisq.test(x = x, p = p)

# p-value = 0.4753 > 0.05 wiêc nie ma podstaw do odrzucenia H0
# Odp. X ma podany rozk³ad.

