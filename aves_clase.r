# Cargar la base de datos
datos = read.csv2(file.choose(),row.names=1)

# Librerías
library(ggplot2)
library(esquisse)
library(modeldata)
library(tidyverse)

# Correr esquisser
esquisser()

# Figura de cajas Aves
x11()
ggplot(datos) +
  aes(x = Dieta, y = Largo.Rectrices, colour = Dieta) +
  geom_boxplot(shape = "circle", fill = "#112446") +
  scale_color_manual(
    values = c(C = "#F8766D",
               F = "#93AA00",
               G = "#00C19F",
               I = "#619CFF",
               N = "#FF61C3")
  ) +
  theme_classic()


# Figura de regresión
x11()

ggplot(datos) +
  aes(x = Longitud.total, y = Largo.Rectrices) +
  geom_point(shape = "circle", size = 1.5, colour = "#112446") +
  geom_smooth(span = 0.75) +
  theme_minimal()


# Figura de cajas Aves
ggplot(datos) +
  aes(x = Dieta, y = Culmen.Expuesto, fill = Dieta) +
  geom_boxplot(shape = "circle") +
  scale_fill_hue(direction = 1) +
  labs(x = "Dietas", y = "Culmen Expuesto (mm)") +
  theme_minimal()



# Figura de dispersión
x11()
ggplot(datos) +
  aes(x = Culmen.Expuesto, y = Culmen.Total, colour = Dieta) +
  geom_point(shape = "circle", size = 1.75) +
  scale_color_manual(
    values = c(C = "#F8766D",
               F = "#93AA00",
               G = "#00C19F",
               I = "#619CFF",
               N = "#FF61C3")
  ) +
  scale_x_continuous(trans = "log10") +
  theme_bw()
  