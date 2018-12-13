data = read.csv("donnees-synop-essentielles-omm.csv", sep=";")

head(data)

summary(data$TempÃ.rature)
names(data)


filteredData = data.frame("Temperature" = data$TempÃ.rature, 
                          "Neige" = data$Hauteur.de.la.neige.fraÃ.che, 
                          "Date" = data$Date, 
                          "Précipitations" = data$PrÃ.cipitations.dans.les.24.derniÃ.res.heures,
                          "Vent" = data$Vitesse.du.vent.moyen.10.mn,
                          "Coordonnées" = data$Coordonnees)


write.csv(filteredData, file = "filteredData.csv", na = '0')