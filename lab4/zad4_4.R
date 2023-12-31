# 4.4 a)

# X pomiary uzyskiwane z przyrz�du A
# Y pomiary uzyskiwane z przyrzadu B

pomiary.A <- c(144, 165, 125, 149, 128, 159)
pomiary.B <- c(147, 167, 124, 152, 127, 160)

n <- length(pomiary.A)

# skorzystamy z paired t.test
# X oraz Y maj� ��czny rozk�ad normalny => X - Y rozk�ad normalny 
# H0: muX = muY
# H1: muX != muY

?t.test
t.test(pomiary.A, pomiary.B, alternative = 'two.sided', paired = T)

# p-value 0.1801 > 0.01 wiec nie ma podstaw do odrzucenia H0

# Odp. Nie istnieje istotna r�nica pomi�dzy tymi pomiarami.

# b) Szukamy delta takiej �e: P(odrzuci H0 | muA - muB = delta) = 0.8

?power.t.test
power.t.test(power = 0.8, n = n, sd = sd(pomiary.A-pomiary.B), sig.level = 0.01, type = 'paired', alternative = 'two.sided')

# delta = 3.870334
# Odp.Test z pkt a) jest w stanie wykrry� r�nic� w �rednich r�wn� 3.870334 z prawdopodobie�stwem 0.8

# c) Szukamy ilosci pomiarow na kazydm przyrzadzie n: P(odrzuci H0 | delta = 1.2) >= 0.8

power.t.test(power = 0.8, delta = 1.2, sd = sd(pomiary.A-pomiary.B), sig.level = 0.01, type = 'paired', alternative = 'two.sided')

# n = 30.67125 => n = 31
# Odp. Trzeba wykona� 31 par pomiar�w ci�nienia aby test z prawdopodobie�stwem nie mniejszym niz 0.8 
# wykrywa� r�nic� pomi�dzy pomiarami wynosz�c� 1.2