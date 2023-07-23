# H0: rozk³ad preferencji jest równomierny
# H1: rozk³ad preferencji nie jest równomierny

licznosci <- c(380, 340, 380, 500)
pj0 <- rep(0.25, 4)

n <- sum(licznosci)

# Mo¿na u¿yc chisq bo n >= 10 

n*pj0

chisq.test(x= licznosci, p = pj0)

# p-value = 7.488e-08 < 0.05 wiêc odrzucamy H0

# Odp. Rozk³ad preferencji nie jest równomierny