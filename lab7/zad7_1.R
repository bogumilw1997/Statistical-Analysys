# H0: rozk�ad preferencji jest r�wnomierny
# H1: rozk�ad preferencji nie jest r�wnomierny

licznosci <- c(380, 340, 380, 500)
pj0 <- rep(0.25, 4)

n <- sum(licznosci)

# Mo�na u�yc chisq bo n >= 10 

n*pj0

chisq.test(x= licznosci, p = pj0)

# p-value = 7.488e-08 < 0.05 wi�c odrzucamy H0

# Odp. Rozk�ad preferencji nie jest r�wnomierny