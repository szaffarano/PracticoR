#
# Prof: Marcelo Soria <soria@agro.uba.ar>
# 
# 24/4/2016
#

# Asignaciones: usar "=" y "<-" es equivalente.  Por claridad conviene "<-" (por ejemplo
# para cuando se pasa a una función parámetros por nombre, ahi va "=")

a <- 5
ls()
typeof(a)

#
# cheat sheets:
# http://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf
# http://www.rstudio.com/wp-content/uploads/2016/01/rstudio-IDE-cheatsheet.pdf
# http://www.rstudio.com/wp-content/uploads/2015/12/ggplot2-cheatsheet-2.0.pdf
# https://cran.r-project.org/doc/contrib/Short-refcard.pdf

# Página del curso del profe: http://inba.agro.uba.ar/curso_r/

# vectores
vn1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vc1 <- c("a", "b", 'nn', 'kk') # válido tanto comilla simple como doble

# dataframes
let1 <- letters[1:20] # vector definido en el core de R
let2 <- LETTERS[1:20]
let3 <- paste(let2, "3", sep = ".")
let4 <- paste0(let2, "3", sep = "_")

vn2 <- 1:20

# valores aleatorios
vn3 <- round(runif(20, min = 0, max = 100), digits = 0)

df1 <- data.frame(let1, let3, vn2, vn3)
names(df1)
df1

names(df1)[1] <- "KK"
names(df1)

# Graficos:
# 1. graphics (viene en el core)
# 2. lattice (viene en el core)
# 3. ggplot2 (la posta! :)

library(graphics)
plot(df1$vn3, df1$vn2)

library(lattice)
xyplot(vn2 ~ vn3, data = df1)

# regresión lineal
reg <- lm(vn2 ~ vn3, data = df1)

summary(reg)
plot(reg)
