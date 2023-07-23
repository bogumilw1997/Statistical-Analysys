x <- seq(-5, 5, length=1000)

y_norm <- dnorm(x, 0, 1)
y_5 <- dt(x, df = 5)
y_10 <- dt(x, df = 10)
y_20 <- dt(x, df = 20)
y_50 <- dt(x, df = 50)
y_100 <- dt(x, df = 100)

plot(x,y_norm, type = "l", lwd = 1, xlab = "x", ylab = "P(x)", xlim = c(qnorm(0.001,0,1), qnorm(0.999,0,1)), col = 'black')
lines(x, y_5, type = "l", lwd = 1, xlab = "x", ylab = "P(x)", col = 'blue')
lines(x, y_10, type = "l", lwd = 1, xlab = "x", ylab = "P(x)", col = 'orange')
lines(x, y_20, type = "l", lwd = 1, xlab = "x", ylab = "P(x)", col = 'red')
lines(x, y_50, type = "l", lwd = 1, xlab = "x", ylab = "P(x)", col = 'pink')
lines(x, y_100, type = "l", lwd = 1, xlab = "x", ylab = "P(x)", col = 'yellow')

legend(-3.2, 0.41, legend=c("Rozk³ad normalny", "Student n = 5", "Student n = 10", "Student n = 20", "Student n = 50", "Student n = 100"),
       col=c("black", "blue", 'orange', 'red', 'pink', 'yellow'), lty=1, cex=0.6)