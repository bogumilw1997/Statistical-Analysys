df = read.table(file.choose(), header = T)

x <- df[,1]

# H0: dane pochodz� z rozk�adu Gamma(4.5, 4)
# H1: dane nie pochodz� z rozk�adu Gamma(4.5, 4)

ks.test(x = df, y = 'pgamma', shape = 4.5, rate = 4)
# p-value = 0.3745 > 0.05, czyli nie ma podstaw do odrzucenia H0

# Odp. Mo�na uzna� �e dane pochodz� z rozk�adu Gamma(4.5, 4)
