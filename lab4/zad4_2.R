# 4.2

df = read.table(file.choose(), header = T)
v1 = df$yield[df$variety == "v1"]
v2 = df$yield[df$variety == "v2"]
# X - Wielkoœæ uzyskanych zbiorów typu v1
# X ~ N(mu_x, sigma_x^2), nieznane mu_x, sigma_x
# Y - Wielkoœæ uzyskanych zbiorów typu v2
# Y ~ N(mu_y, sigma_y^2), nieznane mu_y, sigma_y

# H0: mu_x = mu_y
# H1: mu_x != mu_y

# Jeœli sigma_x = sigma_y => var.equal = T
# Test wariancji:
# H0: sigma_x = sigma_y
# H1: sigma_x != sigma_y
# Rozklady normalne, wiec mozna uzywac var.test
var.test(v1, v2)
# p-value = 0.08542 < 0.1, odrzucamy H0 - wariancje nie sa rowne
t.test(x = v1, y = v2, var.equal = F)
?t.test
# p-value = 0.4883 > 0.05 czyli nie ma podstaw do odrzucenia H0
#Odp. Srednie zbiory sa rowne
