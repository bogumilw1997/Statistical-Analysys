# 4.3 
#a)
df = read.table(file.choose(), header = T)
x = df$domS
y = df$domE
# X - N(mu1, sigma1^2), stezenie CO2 w domach tradycyjnych 
# Y - N(mu2, sigma2^2), stezenie CO2 w domu energooszczednym
# X, Y s� zale�ne parami

# Poniewa� (X, Y) maj� ��czny rozk�ad normalny to Z = X - Y te� na rozk��d normalny

# H0: mu1 = mu2
# H1: mu1 < mu2

t.test(paired = T, x = x, y= y, alternative = 'less')
# p-value = 0.003196 < 0.05, czyli odrzucamy H0
# Odp. Tak, dane potwierdzaj� �� srednie st��nie CO2 w domu energooscz�dnym jest wy�sze ni� standardowym.

#b)

power.t.test(n = length(x), delta = 50, sd = sd(x-y), alternative = "one.sided", type = 'paired', sig.level = 0.05)
# moc testu = 0.8423817
# Moc testu (theta) = P(odrzuci H0 | theta)
# Odp. Prawdopodobie�stwo tego �e test przyjmie H1 w sytuacji gdy r�nica mi�dzy srednimi wynosi 50, jets r�wne 0.8423817.