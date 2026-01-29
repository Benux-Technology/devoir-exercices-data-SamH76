
#données de température pendant une semine (Énoncé :22, 24, 19, 25, 23, 26, 21)

# 1- Création d'un vecteur temperatures

temperatures <- c(22, 24, 19, 25, 23, 26, 21)
  
  #test 1
    cat("températures de la semaine : ",temperatures)
    
# 2- Calcul de la température moyenne
temperature_moyenne <- round(mean(temperatures), 2)

  #test 2
    cat("température moyenne : ", temperature_moyenne)
    
# 3- Les températures minimale et maximale
temperature_min <- min(temperatures)
temperature_max <- max(temperatures)

  #test 3
    cat("température minimale :", temperature_min)
    cat("température maximale :", temperature_max)
    
# 4- Création d'un nouveau vecteur avec uniquement les températures > 23°C
temperaturesUpTo23 <- temperatures[temperatures>23]
  
  #test 4
    cat("Vecteur de températures supérieures à 23°C :", temperaturesUpTo23)
    
# 5- Conversion des températures en Fahrenheit (F = C × 9/5 + 32)
temperaturesFahrenheit <- round(temperatures*9/5+32 ,2)

  #test 5
    cat("Températures en fahrenheit :", temperaturesFahrenheit)
    
# 6- Nommination des éléments du vecteur (Lundi, Mardi, etc.)
names(temperatures) <- c("Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samendi", "Dimanche")

  #test 6
    print(temperatures)
    