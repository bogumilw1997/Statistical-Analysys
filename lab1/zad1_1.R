library(faraway)

data(pima)
?pima

#zmienna test zawiera informacje czy dany pacjent ma oznaki cukrzycy (1 - ma, 0 - nie ma)
#pregnant zawiera inofrmacje ile razy dana kobieta by³a w ci¹¿y
#diastolic - cisnienie rozkurczowe krwi

summary(pima$diastolic)

#cisnienie krwi nie mo¿e byæ 0 dla osoby ¿yjacej

pima$diastolic[pima$diastolic == 0] <- NA
summary(pima$diastolic)

summary(pima$test)

#test jest zakodowana jako zmienna liczbowa a nei jako factor

typeof(pima$test)

pima$test <- factor(pima$test)

typeof(pima$test)
summary(pima$test)

levels(pima$test) <- c('brak objawow', 'objawy')
summary(pima$test)

summary(pima$diastolic)

#srednie ciœnienie rozkurczowe = 72.41 mm Hg
#mediana wynosi 72 mm Hg - mw. polowa badanych ma nizsze cisnienie niz 72 a mw. polowa ma wy¿sze ni¿ 72
#kwartyl dolny wynosi 64 mm Hg a gorny 80 mm Hg, oznacza to ¿ê oko³o 5% badanych ma ciœnienie ni¿sze ni¿ 64 mm Hg

quantile(pima$diastolic, 0.1, na.rm = T)
range(pima$diastolic, na.rm = T)[2] - range(pima$diastolic, na.rm = T)[1]

IQR(pima$diastolic, na.rm = T)

sd(pima$diastolic, na.rm = T)

#e)
mean(pima$diastolic[pima$test == 'objawy'], na.rm = T)
sd(pima$diastolic[pima$test == 'objawy'], na.rm = T)

#f)
boxplot(pima$pregnant)

#g)
licznosci = table(pima$test)
par(mfrow = c(2,1))
barplot(table(pima$test))

pie(table(pima$test), labels = paste(licznosci, ',',names(licznosci)))

par(mfrow = c(1,1))
hist(pima$diastolic, freq = F)
lines(density(pima$diastolic, na.rm = T))
