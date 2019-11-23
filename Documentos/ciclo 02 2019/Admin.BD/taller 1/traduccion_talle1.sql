--traduccion modelo ERR => Relacional 
/* PK_... significa un prefijo para poder identificar primary keys */

--Primera iteracion--
--Paso 1 (Entidades simples):
año(PK_numero)

alumno(PK_NIE,nombre)

edificio(PK_denominacion)

nivel(PK_denominacion)

aulaXseccion(PK_aulaXseccion,)

clase(PK_identificacion,piso,orden)

lab/centroComputo(PK_identificacion,piso,orden)

responsable(PK_DUI)

empleado(PK_codigo,telefono_UCA,oficina)

talonario(PK_correlativo,fecha_pago,estado,monto,fecha_emision,fecha_vencimiento)

pago(PK_denominacion,tipo,numero)

subvencion(PK_codigo)

docente(PK_DUI,nombre,codigo)

profesor(PK_DUI,nombre)

estudiante(PK_carné,nombre)

carrera(PK_codigo,nombre)

--Paso 2 (Entidades débiles):
semestre(PK_orden)


bitacora_alumno(PK,correlativo,tipo,comentario,fecha_hora)
                

seccion(PK_letra)

asignatura(PK_denominacion)
aula(PK_identificacion,nivel,orden)

grado(PK_numero)

--Paso 3(Relaciones 1:1):
--Paso 4(Relaciones 1:N):
--Paso 5(Relaciones N:M):
--Paso 6(Atributos multivaluados):
--Paso 7(Relaciones n-arias):
--Paso 8( Especializaciones y categorías):


