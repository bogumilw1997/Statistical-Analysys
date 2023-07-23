set.seed(4411)

x <- rexp(200, rate = 2)

n <- 200

# estymator NW wynosi 1/srednia
estymator.lambdy <- 1/mean(x)

#decydujemy sie na podzial danych na 20 rownoprawdopodobnych klas, liczymy konce przedzialow

konce.przedzialow <- qexp(seq(0,1,length.out=21),estymator.lambdy)

licznosci.klas <- table(cut(x=x,breaks=konce.przedzialow))

min(licznosci.klas)

# H0: próbka pochodz¹ z rozk³adu wyk³adniczego
# H1: próbka nie pochodzi z rozk³adu wyk³adniczego

#pj0 <- c(pexp(konce.przedzialow[3:length(konce.przedzialow)-1], rate = estymator.lambdy), pexp(konce.przedzialow[length(konce.przedzialow)-1], rate = estymator.lambdy, lower.tail = F))
pj0 <- rep(1/20, times = 20)

min(n*pj0)

# n * pj0 >= 10 dla ka¿dej licznoœci wiêc dobry bêdzie chisq.test 

chisq.test(x = licznosci.klas, p = pj0)
# X-squared = 31.2

qchisq(1 - 0.05, 20 - 1 -1)
# W = <28.8693, inf)
# X-squared nale¿y do zbioru krytycznego zatem odrzucamy H0

# Odp.Dane nie pochodza z rozk³adu wyk³adniczego.
