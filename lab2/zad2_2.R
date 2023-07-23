sample = c(483, 705, 2623, 347, 620, 2719, 1035, 421)


cat(' Estymator reczny:', 1/mean(sample))

library('MASS')
e_lambda <- fitdistr(sample, densfun = 'exponential')

cat('\n Estymator MASS:', e_lambda[[1]])

cat('\n Estymator dla sredniego czasu:', mean(sample))

cat('\n Prawd. ze czas krotszy niz 1000:', 1-exp(-1000 * e_lambda[[1]]))
e_lambda
