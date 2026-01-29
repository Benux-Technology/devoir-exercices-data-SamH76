
# 1 - Creation variable prix avec valeur 100
prix <- 100
 
  # test 1
    cat("Prix unitaire :",prix)

# 2- Création variable quantite avec la valeur 5
quantite <- 5

  #test 2
    cat("Quantité :" ,quantite)
    
# 3-Calcul du total (prix × quantité)
total <- prix*quantite

  #test 3
    cat("Total: " ,total)

# 4- Application d'une remise de 10% sur le total
remise <- total*10/100

  #test 4
    cat("Remise(10%): " ,remise)
    
# 5- Calcul de la taxe (15% du total après remise)
taxe <- (total - remise)*15/100

  #test 5
    cat("Taxe(15% après remise): " ,taxe)
    
# 6- Calcule et affichage du prix_final
prix_final <- total - remise + taxe
cat("Prix final :" ,prix_final)