
# 1- Création d'un data frame
# installation librarie de nettoyage pour les noms des colonnes : install.packages("janitor")

library(tidyverse)
library(readxl)
library(janitor)

data <- read_excel("table_exo3_data.xlsx")
data_nettoyees <- clean_names(data)

  #test 1
    data_nettoyees
    
# 2- Ajout d'une colonne moyenne (moyenne des deux notes)
data_augmentees <- data_nettoyees
data_augmentees$moyenne <-round((data_nettoyees$note_maths+data_nettoyees$note_info)/2, 2)
    
    #test 2
      data_augmentees
  
# 3- Etudiant avec la meilleure moyenne
etudiant1 <- filter(data_augmentees, moyenne == max(moyenne))$nom

  # test 3
    etudiant1
    
# 4- Les étudiants présents
etudiantsPresents <- filter(data_nettoyees, present =="TRUE")$nom

  #test 4
    etudiantsPresents
    
# 5- Calcul de la moyenne de classe en maths
moyenneMaths <-round(mean(data_nettoyees$note_maths),2)

  #test 5
    moyenneMaths
    
# 6-  Ajout colonne mention (>= 90: "Excellent", >= 80: "Bien", sinon:"Passable")
data_augmentees$mention <- case_when(
  data_augmentees$moyenne>=90 ~ "Excellent",
  data_augmentees$moyenne>=80 ~ "Bien",
  TRUE ~ "Passable"
)

  # test 6
    data_augmentees

