#cARGAR LIBRARY

library(data.table)
library(dplyr)

#cargar archivos

choose.files()

data2013 <- read.csv("C:\\Users\\turismo\\Dropbox\\DCEA\\4to. Semestre\\Ciencia de datos\\Documentos para laboratorios\\LAB26\\greenR_2013.csv")
data2013 <- as.data.frame.table(data2013)

class(data2013)
View(data2013)

resultados2013 <- data2013 %>% 
  group_by(Freq.location_name) %>% 
  summarise(suma_Freq.GCI_2013 = sum(Freq.GCI_2013, na.rm = T),
            suma_Freq.GP_SINVCR = sum(Freq.GP_SINVCR, na.rm = T),
            suma_Freq.GCP_2013 = sum(Freq.GCP_2013, na.rm = T),
            count = n())
