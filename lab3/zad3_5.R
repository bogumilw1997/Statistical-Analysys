#3.5
#a)
# X - udzia� m�czyzn w�r�d pracownik�w przedszkoli
# X ~ rozk�ad dwupunktowy

# H0: p = 0.35
# H1: p < 0.35

?prop.test
prop.test(x = 128, n = 400, p = 0.35, alternative = 'less')

# p-value = 0.114 > 0.05, czyli nie ma podstaw do odrzucenia H0
#Odp. Stwierdzenie �e udzia� m�czyzn w�r�d pracownik�w przedszkoli jest mniejszy ni� 35% jest nieuzasadnione.

?binom.test
binom.test(x = 3, n = 10, p = 0.35, alternative = 'less')

# p-value = 0.5138, czyli nie ma podstaw do odrzucenia H0
# Odpowied� si� nie zmienia
