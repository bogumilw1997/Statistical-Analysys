library(HSAUR2)

#a)
attach(Forbes2000)

data <- profits[category == 'Banking'] * 1000

cat('liczba pr�bek:', length(data))
# X - roczny zysk du�ych sp�ek bankowych, X ~ rozklad neiznany, du�a liczba pr�bek n = 313, wi�c mo�emy skorzysta� z t.test

# H0: mu = 425
# H1: mu < 425

cat('P-value:',t.test(data, alternative = 'less', mu = 425)[[3]])

#p-value > 0.05, wiec nie ma podstaw do odrzucenia H0
# Hipoteza o  tym �e �redni roczny zysk by� mniejszy ni� 425 jest b��dna

#b)
# P(przyj�cia H0 | mu = 422) = 1 - moc.testu(422)

pow <- power.t.test(n = length(data), delta = 425 - 422, sd = sd(data), sig.level =  0.05, type = 'one.sample', alternative = 'one.sided')[[5]]

cat('power:', pow)

cat('szukane P =', 1-pow)
#Bardzo du�e prawdopodobie�stwo pope�nienia b��du


#c)

#Szukamy mu1 (delta = 425 - mu1), takiego �e P(przyjmujemy H1 | mu1) = 0.7 = P(odrzucenie H0 | mu1) = moc.testu(mu1)

mu1 <- 425 - power.t.test(n = length(data), power = 0.7, sd = sd(data), sig.level =  0.05, type = 'one.sample', alternative = 'one.sided')[[2]]
cat('szukane mu1 =', mu1)
# Odp. Sredni roczny zysk musia�by wynosi� 178 mln USD.