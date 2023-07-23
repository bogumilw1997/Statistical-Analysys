# 3.6

#a)
# X - waga doroslych ptakow w kg
# X~ rozk³ad normalny o nieznanych parametrach
# H0: mu = 2.5 kg
# H1: mu < 2.5 kg

dane <- c(5.21, 5.15, 5.20, 5.48, 5.19, 5.25, 5.09, 5.17, 4.94, 5.11)
t.test(dane, mu = 5.2, alternative = 'less')
# p-value = 0.3192 > 0.05, wiec nie ma podstaw do odrzucenia H0
# Odp. Waga ptakow jest nie mniejsza niz 5.2 kg

#b) p = P(przyjmie H1 | mu = 5.15) = moc.testu(mu = 5.15)
power.t.test(n = length(dane), delta = 5.2 -5.15, sd = sd(dane), type = 'one.sample', alternative = 'one.sided')
# power = 0.2830938 = p

#c) Szukamu mu, takiego aby p = P(przyjmie H1 | mu = ?) = 0.8
power.t.test(n = length(dane), sd = sd(dane), type = 'one.sample', alternative = 'one.sided', power = 0.8)
delta = 0.1164867
mu = 5.2 - delta; mu
# odp. Œrednia waga ptaków powinna wynosiæ 5.083513

# d) Szukamu n, takiego aby p = P(przyjmie H1 | n = ?) = 0.8
power.t.test(sd = sd(dane), type = 'one.sample', alternative = 'one.sided', power = 0.8, delta = 0.05, sig.level = 0.05)
# Odp. n = 47.51533, -> 48

# e) 
sd(dane)
# H0: sigma = 0.2
# H1: sigma < 0.2
statysyka.test <- (length(dane) - 1)*var(dane)/(0.2^2)
# statystyka = 4.19725
qchisq(0.05, length(dane) - 1)
# W = (0, 3.325113>
# Statystyka testowa nie nale¿y do W, wiêc nie ma podstaw do odrzucenia H0
# Odp. Nie mo¿na tak stwierdziæ
