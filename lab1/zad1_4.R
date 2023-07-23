library(MASS)
data(Cars93)

?Cars93
#Min.price to cena w wersji podstawowej
#MPG.city - saplanie w miescie w milach na galony 
#MPG.highway - spalanie na autostradzie w milach na galony 
#Weigh - waga w funtach
#Origin - czy marka jest amerykanska
#Type - typ samochodu

#b)
Cars93$LP100km.city <- 1/Cars93$MPG.city * 3.8*100/1.6
Cars93$LP100km.city <- 1/Cars93$MPG.highway * 3.8*100/1.68

Cars93$KG.Weight <- Cars93$Weight * 0.4536

kurs_dolara <- 4.31

Cars93$PLN.price <- Cars93$Min.Price * kurs_dolara

print(head(Cars93))

cat('\n Œrednia cena:', mean(Cars93$Price), 'tys. PLN')
cat('\n Mediana ceny:', median(Cars93$Price), 'tys. PLN')
cat('\n Kwartyl rzêdu 0.95 ceny:', quantile(Cars93$Price, 0.95), 'tys. PLN')

cat('\n Ceny samochodów wy¿szych od kwartyla rzêdu 0.95 ceny:\n')
print(Cars93$PLN.price[Cars93$PLN.price > quantile(Cars93$PLN.price, 0.95)])

cat('\n Modele samochodów o cenach wy¿szych od kwartyla rzêdu 0.95 ceny:\n')
print(Cars93$Make[Cars93$PLN.price > quantile(Cars93$PLN.price, 0.95)])

boxplot(Cars93$LP100km.city[Cars93$Origin == 'non-USA'], main = 'Wykres skrzynkowy KPL dla samochodów non-USA', ylab = 'KPL')
boxplot(Cars93$LP100km.city[Cars93$Origin == 'USA'], main = 'Wykres skrzynkowy KPL dla samochodów USA', ylab = 'KPL')

boxplot(Cars93$LP100km.city~Cars93$Origin, main = 'Wykres skrzynkowy KPL dla samochodów', ylab = 'KPL')

hist(Cars93$KG.Weight, main = 'Histogram wagi samochodów', ylab = 'Gêstoœæ', xlab = 'Waga [kg]', freq = F)
lines(density(Cars93$KG.Weight),lwd = 2)

pie(table(Cars93$Type), main = 'Typ samochodu')
barplot(table(Cars93$Type), main = 'Typ samochodu')

print(table(Cars93$Type == 'Sporty'))

print(Cars93$PLN.price[Cars93$PLN.price > quantile(Cars93$PLN.price, 0.95)])
