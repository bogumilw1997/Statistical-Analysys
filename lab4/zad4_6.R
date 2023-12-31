# 4.6 a)
library(MASS)
head(nlschools)
mediana <- median(nlschools$SES)

dane1 <- nlschools$IQ[nlschools$SES > mediana]
dane2 <- nlschools$IQ[nlschools$SES <= mediana]

# X - zmienna losowa opisujaca IQ uczni�w o SES powy�ej mediany
# Y - zmienna losowa opisujaca IQ uczni�w pozosta�ych

# NIe znamy rozK�adu X,Y ale dysponujemy pomiarami o du�ych liczno�ciach (powy�ej 1000)

U <- (mean(dane1) - mean(dane2))/sqrt(var(dane1)/length(dane1) + var(dane2)/length(dane2))

# U = 12.13697

# H0: muX = muY
# H1: mu1 > mu2

w_l <- qnorm(1 - 0.05)

# w_l = 1.644854
# W = <1.644854, +inf>

# U nale�y do W, wi�c odrzucamy H0
# Odp. Na podstawie powy�szych danych mo�emy stwierdzi� �� uczniowie pochodz�cy z dom�w o SES wi�kszym od mediany, maj� wy�sze IQ werbalne od reszty.