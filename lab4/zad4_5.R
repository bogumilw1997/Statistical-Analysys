#a)
# A,B - zawartoœæ nikotyny w papierosach A i B
# A,B ~ N(muA,varA), N(muB,varB)
# H0: muA = muB
# H1: muA < muB

gatunek.A <- c(26.4, 22.5, 24.9, 23.7, 21.5)
gatunek.B <- c(25.1, 29, 23.4, 27.6, 22.3)

?t.test
?var.test

var.test(x = gatunek.A, y= gatunek.B)

#Mo¿na przyjac te same wariancje

t.test(x = gatunek.A, y = gatunek.B, alternative = 'less', paired = F, var.equal = T)

# p-value = 0.1531 > 0.05, czyli nie ma podstaw do odrzucenia H0
# Odp. Nie ma podstaw aby przyj¹æ ¿e gatunek B ma wy¿sz¹ zawartoœæ nikotyny.

#b) Szukamy p: P(przyjêcie H0 | muB- muA = 2) = 1 - moc.testu(muB- muA = 2) = p
?power.t.test()
n <- length(gatunek.A) 
power.t.test(n = n, delta = 2, sd = sqrt(((n -1)*var(gatunek.A)+(n -1)*var(gatunek.B))/(2 * n - 2)), sig.level = 0.05, type = 'two.sample', alternative = 'one.sided')
power <- 0.3804118
1 - power
# p = 0.6195882, dosyc duze prawdopodobienstwo popelnienia bledu

#c) 
# Szukamy n: P(przyjêcie H1 | muB- muA = 2) = moc.testu(muB- muA = 2) >= 0.75
power.t.test(power = 0.75, delta = 2, sd = sqrt(((n -1)*var(gatunek.A)+(n -1)*var(gatunek.B))/(2 * n - 2)), 
             sig.level = 0.05, type = 'two.sample', alternative = 'one.sided')

# n = 16.32933 => n = 16
# Odp. Aby test odrzuci³ H0 na co najmniej 75% musimy mieæ 17 par pomiarów