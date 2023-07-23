# H0: dane pochodza z rozkladu wykladniczego o parametrze lambda = 2
# H1: dnae nie pochodza z rozkladu wykladniczego o parametrze lambda = 2
set.seed(4411)

x <- rexp(200, rate = 2)
ks.test(x, y = 'pexp', rate = 2)
# p-value = 0.2507 > 0.05