#a)
#X - waga kozy, X~N(mu, sigma^2)
#mu, sig^2 s¹ nieznane

dane32 <- read.table(file.choose(), header = T)
typeof(dane32[[3]])

dane32$WeightInitial

#Model 2 - t.test
#H0: mu = 23
#H1: mu > 23

t.test(x = dane32$WeightInitial, alternative = 'greater', mu = 23)
# p-value = 0.3936 > 0.05
# Nie ma podstaw do odrzuceneia H0
# Œrednia waga kóz nie przekracza 23 kg

#b)
# P(przyjmujemy H0 | mu = 24) = 1 - moc.testu(mu = 24)

# moc.testu(teta) = P(odrzucimy H0 | teta)

power.t.test(n = 40, delta = 1, sd = sd(dane32$WeightInitial), sig.level = 0.05, type = 'one.sample', alternative = 'one.sided')

power <- 0.5539441
1 - power

# P = 0.4460559, jest to prawdopodobieñstwo pope³nienia b³êdu i jest ono dosyæ du¿e

#c)

# P(odrzucenia H0 | mu = 24) >= 0.8 = moc.testu(mu = 24)
# moc.testu(mu = 24) >= 0.8
power.t.test(power = 0.8, delta = 1, sd = sd(dane32$WeightInitial), sig.level = 0.05, type = 'one.sample', alternative = 'one.sided')

# n = 76.68731 =~ 77



