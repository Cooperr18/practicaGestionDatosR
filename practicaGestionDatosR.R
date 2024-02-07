nuevo_dir = "C:/practicaGestionDatosR"
setwd(nuevo_dir)

set.seed(500)

1#
vector_edades_descubrimiento = c(1984, 1985, 1987, 1990, 1991, 1992, 1995, 1997)
typeof(vector_edades_descubrimiento)
mean(vector_edades_descubrimiento)

2#
vector_cantidad_artefactos = c(5,10,13,14,20,17,32)
sum(vector_cantidad_artefactos)
print(vector_cantidad_artefactos)

3#
vector_profundidad_hallazgos = c(2,3,7,5,9,11,1,4)
max(vector_profundidad_hallazgos)

4#
vector_materiales_encontrados = c("bronce","cobre","ámbar","cerámica","sílex","variscita","óseo")
length(vector_materiales_encontrados)

5#
vector_años_excavaciones = c(2008,2001,2007,2014,2004,2009,2003,2011,2002)
length(vector_años_excavaciones)

6#
matriz1 = matrix(c(1,2,3,4,5),
                 nrow = 5, ncol = 6,
                 byrow = T)
rowSums(matriz1)
which.max(rowSums(matriz1))

7#
matriz2 = matrix(c(1,2,3,4,5),
                 nrow = 5, ncol = 5,
                 byrow = T)
colMeans(matriz2)
which.max(colMeans(matriz2))

8#
matriz3 = matrix(c(1,2,3,4,5,6),
                 nrow = 6, ncol = 3,
                 byrow =  T)
colSums(matriz3)
which.max(colSums(matriz3))


9#
matriz4 = matrix(c(1,2,3,4,5,6,7,8),
                 nrow = 4, ncol = 4,
                 byrow = T)
colMeans(matriz4)
which.min(colMeans(matriz4))

10#
matriz5 = matrix(c(1,2,3,4,5,6,7,8),
                 nrow = 4, ncol = 4,
                 byrow = T)
mode <- function(x) {
  return(as.numeric(names(which.max(table(x)))))
}
mode(col(matriz5))

11#
registro_artefactos = data.frame(
  sitio_arqueologico = sitio_arqueologico,
  tipo_de_artefacto = tipo_de_artefacto,
  fecha_descubrimiento = fecha_descubrimiento,
  descripcion = descripcion
)
n_registros = 20

sitio_arqueologico = sample(c("sitio1","sitio2","sitio3","sitio4","sitio5"), n_registros,replace = TRUE)
tipo_de_artefacto = sample(c("cerámica","lítica","industria ósea","cuentas de collar","brazales"), n_registros,replace = TRUE)
fecha_descubrimiento = sample(1900:2000, n_registros,replace = TRUE)
descripcion = sample(c("buen estado","mal estado","practicamente desaparecido","fragmentado"), n_registros,replace = TRUE)








