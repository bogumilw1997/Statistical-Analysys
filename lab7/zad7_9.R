N <- 1000

a1 <- rnorm(N, mean = 20, sd = 5)
a2 <- runif(N, min = -1, max = 1)
a3 <- rexp(N, rate = 1/5)
a4 <- rpois(N, lambda = 3)

op <- par(mfrow=c(2,2))

qqnorm(a1)
qqline(a1)

qqnorm(a2)
qqline(a2)

qqnorm(a3)
qqline(a3)

qqnorm(a4)
qqline(a4)

par(op)

df <- data.frame(norm = a1, unif = a2, exp = a3, pois = a4)
boxplot(df)

hist(a1, freq = F)
lines(density(a1))

hist(a2, freq = F)
lines(density(a2))

hist(a3, freq = F)
lines(density(a3))

hist(a4, freq = F)
lines(density(a4))

shapiro.test(a1)

# H0: dane pochodza z rozkladu normalnego
# H1: dane nie pochodza z rozkladu normalnego

# p-value = 0.7633 > 0.05, wiêc nie ma podstaw do odrzucenia H0

shapiro.test(a2)
# p-value = 2.2e-16 < 0.05 wiêc odrzucamy H0
