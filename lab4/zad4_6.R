# 4.6 a)
library(MASS)
head(nlschools)
mediana <- median(nlschools$SES)

dane1 <- nlschools$IQ[nlschools$SES > mediana]
dane2 <- nlschools$IQ[nlschools$SES <= mediana]

# X - zmienna losowa opisujaca IQ uczniów o SES powy¿ej mediany
# Y - zmienna losowa opisujaca IQ uczniów pozosta³ych

# NIe znamy rozK³adu X,Y ale dysponujemy pomiarami o du¿ych licznoœciach (powy¿ej 1000)

U <- (mean(dane1) - mean(dane2))/sqrt(var(dane1)/length(dane1) + var(dane2)/length(dane2))

# U = 12.13697

# H0: muX = muY
# H1: mu1 > mu2

w_l <- qnorm(1 - 0.05)

# w_l = 1.644854
# W = <1.644854, +inf>

# U nale¿y do W, wiêc odrzucamy H0
# Odp. Na podstawie powy¿szych danych mo¿emy stwierdziæ ¿ê uczniowie pochodz¹cy z domów o SES wiêkszym od mediany, maj¹ wy¿sze IQ werbalne od reszty.