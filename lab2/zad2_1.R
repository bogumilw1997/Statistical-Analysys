sample <- c(-11.1, 2.9, -1.1, -3.8, -1.66, -3.07, -3.25, -3.01,-1.27, -5.86, -14.99, -10.23, -3.91, 99.34, -3.56, -5.39)

library('MASS')
fit <- fitdistr(sample, densfun = 'cauchy')

cat('\n Estymator parametru a:', fit[[1]][1])
cat('\n Estymator parametru d:', fit[[1]][2])

