# 4.9 

#a)

library(MASS)
head(Cushings)

dane.a <- Cushings$Tetrahydrocortisone[Cushings$Type == 'a']
dane.b <- Cushings$Tetrahydrocortisone[Cushings$Type == 'b']

# A - tempo wydalania tetrahodrokortyzonu z moczem u pacjet�w zespo�u a
# B - tempo wydalania tetrahodrokortyzonu z moczem u pacjet�w zespo�u b

# Poniewa� tempo wydalania tetrahodrokortyzonu ma ��czny wielowymiarowy rozk�ad normalny to rozk�ady brzegowe r�wnie� maj� rozk�ad normalny:
# A ~ N(muA, varA), B ~ N(muB, varB)

# H0: varA = varB
# H1: varA != varB

# U�ywamy var.test do weryfikacji czy obie wariancje s� takie same:

var.test(dane.a, dane.b)

# p-value = 0.0063 < 0.1, wi�c odrzucamy H0
# Odp. Wariancji tempa wydalania tetrahodrokortyzonu z moczem u pacjent�w z typem zespo�u a i b nie jest taka sama.

#b)

# H0: muA = muB
# H1: muA != muB

# Poniewa� A i B s� normalne o r�nej wariancji to u�ywamy unpaired t.test z var.equal = F:

t.test(x = dane.a, y = dane.b, alternative = 'two.sided', paired = F, var.equal = F)

# p-value = 0.001719 < 0.02, wi�c odrzucamy H0
#Odp. �rednie tempo wydalania tetrahodrokortyzonu z moczem u pacjent�w z typem zespo�u a i b jest r�ne.