# 3.7

# X = 1 je�li sta� < 5 lat
# X = 0 jesli staz >= 5 lat
# p = P(X = 1)

# H0: p = 0.8
# H1: p != 0.8

# x >= 5 i n-x >= 5, czyli mo�na stosowa� prop.test

x = 118
n = 150

x/n

prop.test(x = x, n = n, p = 0.8, alternative = 'two.sided')

# p-value = 0.7595 > 0.01 
# Odp. mo�na twierdzi� �e 80% pracownik�w ma sta� < 5 lat
