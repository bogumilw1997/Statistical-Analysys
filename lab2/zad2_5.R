set.seed(42)

sample100 = rgamma(n=100, shape = 3, rate = 2)
sample1000 = rgamma(n=1000, shape = 3, rate = 2)

library(MASS) 

fit100 <- fitdistr(sample100, densfun = 'gamma', lower=c(0,0))
fit1000 <- fitdistr(sample1000, densfun = 'gamma', lower=c(0,0))

cat('\n Shape 100:', fit100[[1]][1])
cat('\n Rate 100:', fit100[[1]][2])

cat('\n\n Shape 1000:', fit1000[[1]][1])
cat('\n Rate 1000:', fit1000[[1]][2])
