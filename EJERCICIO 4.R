# EJERCICIO 4

# 1.- Instala el paquete "palmerpenguins"

install.packages("palmerpenguins")

# 2.- Carga el paquete palmerpenguins

library(palmerpenguins)

# 3.- Carga el dataset penguins

data("penguins")

# 4.- Explora los datos con las funciones str() y summary()
str(penguins)
summary(penguins)

# 5.- Verifica si hay valores na
colSums(is.na(penguins))


# 6.- Explora los valores nulos

#se cuentan con 5 columanas con valores nulos de las cuales la columna sex tiene 11 valores N/A

# 7.- Filtra los valores nulos
library(tidyverse)
penguins <- drop_na(penguins)
colSums(is.na(penguins))
# 8. Selecciona las columnas: `species`, `island`, `bill_length_mm`, `bill_depth_mm`, y `flipper_length_mm`.
penguins_1 <- select(penguins, species, island, bill_length_mm, bill_depth_mm, flipper_length_mm)
head(penguins_1)

# 9. Filtra las filas donde la especie sea "Adelie"  y la longitud de la aleta (`flipper_length_mm`) sea mayor a 190 mm.
penguins_filter <- filter (penguins_1, species == "Adelie", flipper_length_mm > 190)

# 10. Ordena el resultado orden ascendente según la longitud del pico (`bill_length_mm`).
penguins_2 <- penguins_1 [order(penguins_1$bill_length_mm)  , ]

# 11. Calcula el promedio de la longitud del pico (`bill_length_mm`) para los pingüinos "Adelie" de la isla "Dream".
penguins_prom <- filter (penguins_1, species == "Adelie", island == "Dream")
prom <- mean (penguins_prom$bill_length_mm)
print (prom)

#NOTA PARA EL INSTRUCTOR .El paso 10 y 11 me costaron un poco de trabajo el descubrir la forma de resolverlos 
# comprendo que existen varias formas de llegar al mismo resultado y me gustaria saber
# como lo resolveria usted, estoy seguro que existe una forma mas corta de resolver esos 
# puntos, lo intente con unas funciones pero no lograba resolverlo :(.
# SALUDOS