#4.1

#a)
# X - rozk³ad klientów ¯uczka w Warszawie, Y - rozk³ad klientów ¯uczka w Krakowie
# X, Y - rozk³ady dwupunktowe
# p.w = P(X = jest  kilentem), p.k = P(Y = jest klientem)

# H0: p.w = p.k
# H1: p.w > p.k

# k.k,k.w,m.k, m.w >= 5 -> mo¿na u¿yæ prop.test
?prop.test
prop.test(x = c(40, 31), n =c(233, 220), alternative = 'greater')
# p-value = 0.2204 > 0.05, wiêc nie ma podstaw do odrzucenia H0
# Odp. Nie mo¿na tak stwierdziæ

#b) Szukamy P(przyjêcie H1 | p.w = 0.17, p.k = 0.14) = moc.testu(p.w = 0.17, p.k = 0.14)
?power.prop.test
power.prop.test(p1 = 0.17, p2 = 0.14, sig.level = 0.05, alternative = 'one.sided', n = c(220, 233))
# p = 0.2188411 
# Odp. Szukane prawdopodobieñstwo nale¿y do przedzia³u (0.219, 0.226)

#c)S szukamy n: P(przyjêcie H1 | p.w = 0.17, p.k = 0.14) = moc.testu(p.w = 0.17, p.k = 0.14) >= 0.8
power.prop.test(p1 = 0.17, p2 = 0.14, sig.level = 0.05, alternative = 'one.sided', power = 0.8)
# n = 1798.421 -> n = 1799
#Odp. Nale¿y wylosowaæ 1799 mieszkañcóW z Warszawy i 1799 z Krakowa.