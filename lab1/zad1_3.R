waga <- c(60, 72, 57, 90, 95, 72)
wzrost <- c(1.75, 1.8, 1.65, 1.9, 1.74, 1.91)

bmi <- waga/wzrost^2
cat("bmi: ", bmi)

bmi_mean <- mean(bmi)
cat("\nsrednia: ", bmi_mean)

bmi_median <- median(bmi)
cat("\nmediana: ", bmi_median)

bmi_quantiles <- quantile(bmi, type = 2)

cat("\ndolny kwartyl: ", bmi_quantiles[2])

cat("\ngórny kwartyl: ", bmi_quantiles[4])

bmi_variance <- var(bmi)
cat("\nwariancja: ", bmi_variance)

bmi_stdev <- sd(bmi)
cat("\nodch. standardowe: ", bmi_stdev)

bmi_iqr <- IQR(bmi)
cat("\nIQR: ", bmi_iqr)

boxplot(bmi,
        main = "Wykres skrzynkowy BMI",
        xlab = "BMI",
        #col = "orange",
        #border = "brown",
        horizontal = TRUE
)

prawidlowe_wzrosty <- wzrost[(bmi >= 20.7) & (bmi < 26.5)]
cat("\nprawidlowe wzrosty: ", prawidlowe_wzrosty)