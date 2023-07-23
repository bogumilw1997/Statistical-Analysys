# 4.9 

#a)

library(MASS)
head(Cushings)

dane.a <- Cushings$Tetrahydrocortisone[Cushings$Type == 'a']
dane.b <- Cushings$Tetrahydrocortisone[Cushings$Type == 'b']

# A - tempo wydalania tetrahodrokortyzonu z moczem u pacjetów zespo³u a
# B - tempo wydalania tetrahodrokortyzonu z moczem u pacjetów zespo³u b

# Poniewa¿ tempo wydalania tetrahodrokortyzonu ma ³¹czny wielowymiarowy rozk³ad normalny to rozk³ady brzegowe równie¿ maj¹ rozk³ad normalny:
# A ~ N(muA, varA), B ~ N(muB, varB)

# H0: varA = varB
# H1: varA != varB

# U¿ywamy var.test do weryfikacji czy obie wariancje s¹ takie same:

var.test(dane.a, dane.b)

# p-value = 0.0063 < 0.1, wiêc odrzucamy H0
# Odp. Wariancji tempa wydalania tetrahodrokortyzonu z moczem u pacjentów z typem zespo³u a i b nie jest taka sama.

#b)

# H0: muA = muB
# H1: muA != muB

# Poniewa¿ A i B s¹ normalne o ró¿nej wariancji to u¿ywamy unpaired t.test z var.equal = F:

t.test(x = dane.a, y = dane.b, alternative = 'two.sided', paired = F, var.equal = F)

# p-value = 0.001719 < 0.02, wiêc odrzucamy H0
#Odp. Œrednie tempo wydalania tetrahodrokortyzonu z moczem u pacjentów z typem zespo³u a i b jest ró¿ne.