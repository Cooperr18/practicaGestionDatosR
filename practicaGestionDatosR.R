nuevo_dir = "C:/practicaGestionDatosR"
setwd(nuevo_dir)

set.seed(500)

1#
vector_edades_descubrimiento = c(1:100)
media_descubrimientos = mean(vector_edades_descubrimiento)

2#
vector_cantidad_artefactos = c(5,10,13,14,20,17,32)
artefactos_en_total = sum(vector_cantidad_artefactos)
print(vector_cantidad_artefactos)

3#
vector_profundidad_hallazgos = c(2,3,7,5,9,11,1,4)
profundidad_max_hallazgos = max(vector_profundidad_hallazgos)

4#
vector_materiales_encontrados = c("bronce","cobre","ámbar","cerámica","sílex","variscita","óseo")
tipos_materiales = length(vector_materiales_encontrados)

5#
vector_años_excavaciones = c(2008,2001,2007,2014,2004,2009,2003,2011,2002)
años_excavaciones = length(vector_años_excavaciones)

6#
matriz1 = matrix(c(1,2,3,4,5),
                 nrow = 5, ncol = 6,
                 byrow = T)
rowSums(matriz1)
año_max_excavaciones = which.max(rowSums(matriz1))

7#
matriz2 = matrix(c(1,2,3,4,5),
                 nrow = 5, ncol = 5,
                 byrow = T)
colMeans(matriz2)
region_antigua = which.min(colMeans(matriz2))

8#
matriz3 = matrix(c(1,2,3,4,5,6),
                 nrow = 6, ncol = 3,
                 byrow =  T)
colSums(matriz3)
periodo_max_Artefactos = which.max(colSums(matriz3))


9#
matriz4 = matrix(c(1,2,3,4,5,6,7,8),
                 nrow = 4, ncol = 4,
                 byrow = T)
colMeans(matriz4)
sitio_menor_profundidad = which.min(colMeans(matriz4))

10#
matriz5 = matrix(c(1,2,3,4,5,6,7,8),
                 nrow = 4, ncol = 4,
                 byrow = T)
mode <- function(x) {
  return(as.numeric(names(which.max(table(x)))))
}
material_mas_comun = mode(col(matriz5))

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

#12
excavaciones_equipo = data.frame(
  equipo = equipo,
  sitio_arqueologico = sitio_arqueologico,
  fecha_inicio = fecha_inicio,
  fecha_finalizacion = fecha_finalizacion
)
n_registros = 10

equipo = sample(c("equipo 1","equipo 2","equipo 3","equipo 4","equipo 5"), n_registros, replace =TRUE)
sitio_arqueologico = sample(c("Cueva de los Mármoles","Cueva del Ángel","Cueva de Nerja","Cueva del Toro","Abrigo de Zacatín","Cova Negra","Cueva de la Cocina","Cueva de los Murciélagos de Albuñol","Cueva de los Murciélagos de Zuheros","Cova de l'Or"))
fecha_inicio = sample(c(1950:2015), n_registros, replace = TRUE)
fecha_finalizacion = sample(c(2010:2024), n_registros, replace = TRUE)

View(excavaciones_equipo)

13#
datos_esqueletos = data.frame(
  numero_id = numero_id,
  sitio_arqueologico = sitio_arqueologico,
  edad_estimada = edad_estimada,
  sexo = sexo,
  caracteristica_especial = caracteristica_especial
)

n_registros = 30

numero_id = c(1:30)
sitio_arqueologico = sample(c("Cruz del Negro","Setefilla","Gandul","Necrópolis del Judío","Angorrilla","Necrópolis del Almendral"))
edad_estimada = sample(c(3:32))
sexo = c("Masculino","Femenino")
caracteristica_especial = sample(c("Patología","Trepanación","Huellas de corte","Huellas perimortem","Huellas postmortem","Huellas antemortem"), n_registros, replace = TRUE)

View(datos_esqueletos)

14#
ubicaciones_geograficas = data.frame(
  sitio_arqueologico = sitio_arqueologico,
  latitud = latitud,
  longitud = longitud,
  altitud = altitud
)

n_registros = 10

sitio_arqueologico = c("Sitio 1","Sitio 2","Sitio 3","Sitio 4","Sitio 5","Sitio 6","Sitio 7","Sitio 8","Sitio 9","Sitio 10")
latitud = sample(c(40.904600:50.904600), n_registros, replace = T)
longitud = sample(c(-73.279389:-83.279389), n_registros, replace = T)
altitud = sample(c(1:1000), n_registros, replace = T)

View(ubicaciones_geograficas)



