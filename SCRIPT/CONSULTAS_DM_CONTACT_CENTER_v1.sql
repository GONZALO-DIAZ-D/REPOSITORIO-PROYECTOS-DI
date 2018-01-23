
/******************************/
/** SCRIPT CONSULTAS PROCESO **/
/**    DM_CONTACT_CENTER      */
/******************************/


/* DIM COLABORADOR */

DECLARE @fecha_proceso DATE;
SET @fecha_proceso = GETDATE();
--SET @fecha_proceso = '${fecha_proceso}';

SELECT
nombre, 
apellido_paterno, 
apellido_materno, 
usuario 
FROM DETALLE_LLAMADAS
WHERE CAST(fecha_llamada AS DATE) = CAST(@fecha_proceso AS DATE)
AND usuario NOT IN (SELECT DISTINCT(usuario) FROM USUARIOS)
GROUP BY nombre, 
apellido_paterno, 
apellido_materno, 
usuario 


/* DIM FECHAS */

DECLARE @fecha_proceso DATE;
SET @fecha_proceso = GETDATE();
--SET @fecha_proceso = '${fecha_proceso}';
SET DATEFIRST 1;

SELECT 
CAST(fecha_llamada AS DATE) AS fecha,
DATEPART(YEAR,(CAST(fecha_llamada AS DATE))) AS año,
DATEPART(MONTH,(CAST(fecha_llamada AS DATE))) AS mes,
DATEPART(QUARTER,(CAST(fecha_llamada AS DATE))) AS trimestre,
DATEPART(WEEK,(CAST(fecha_llamada AS DATE))) AS semana,
DATEPART(DAY,(CAST(fecha_llamada AS DATE))) AS dia,
DATEPART(WEEKDAY,(CAST(fecha_llamada AS DATE))) AS dow,
DATEPART(HOUR,(CAST(fecha_llamada AS time))) AS hora
FROM DETALLE_LLAMADAS
WHERE CAST(fecha_llamada AS DATE) = CAST(@fecha_proceso AS DATE)
GROUP BY CAST(fecha_llamada AS DATE),
DATEPART(YEAR,(CAST(fecha_llamada AS DATE))),
DATEPART(MONTH,(CAST(fecha_llamada AS DATE))),
DATEPART(QUARTER,(CAST(fecha_llamada AS DATE))),
DATEPART(WEEK,(CAST(fecha_llamada AS DATE))),
DATEPART(DAY,(CAST(fecha_llamada AS DATE))),
DATEPART(WEEKDAY,(CAST(fecha_llamada AS DATE))),
DATEPART(HOUR,(CAST(fecha_llamada AS time)))


/* DIM LLAMADAS */

DECLARE @fecha_proceso DATE;
SET @fecha_proceso = GETDATE();
--SET @fecha_proceso = '${fecha_proceso}';

SELECT 
A.id_llamada,
A.id_grabacion,
A.grupo_ACD,
A.estado,
A.calificacion,
A.clasificacion,
A.sub_clasificacion,
CASE
 WHEN A.transferida IS NOT NULL THEN 'SI'
 ELSE 'NO'
END AS transferida ,
A.destino,
A.ani
FROM (SELECT ROW_NUMBER() OVER(PARTITION BY B.id_llamada ORDER BY id_llamada DESC) AS CLAVE, B.* FROM DETALLE_LLAMADAS B) A
WHERE CAST(A.fecha_llamada AS DATE) = CAST(@fecha_proceso AS DATE)
AND A.CLAVE = 1
GROUP BY 
A.id_llamada,
A.id_grabacion,
A.grupo_ACD,
A.estado,
A.calificacion,
A.clasificacion,
A.sub_clasificacion,
A.transferida,
A.destino,
A.ani


/* HECHOS CONTACT CENTER */

DECLARE @fecha_proceso DATE;
SET @fecha_proceso = GETDATE();
--SET @fecha_proceso = '${fecha_proceso}';

SELECT 
D.id_llamada,
B.id_fecha,
C.id_colaborador,
SUM(A.tiempo_dialogo) AS total_dialogo,
SUM(A.tiempo_espera) AS total_espera,
SUM(A.tiempo_notas) AS total_notas,
SUM(A.tiempo_en_cola) AS total_en_cola,
count(1) AS cantidad_llamadas
FROM DETALLE_LLAMADAS A
INNER JOIN DIM_FECHA B ON CAST(A.fecha_llamada AS DATE) = B.fecha
INNER JOIN DIM_COLABORADOR C ON ISNULL(A.usuario,0) = ISNULL(C.usuario,0)
INNER JOIN DIM_LLAMADAS D ON A.id_llamada = D.id_llamada
WHERE DATEPART(HOUR,(CAST(A.fecha_llamada AS time))) = B.hora
AND CAST(fecha_llamada AS DATE) = CAST(@fecha_proceso AS DATE)
AND ISNULL(A.id_grabacion,0) = ISNULL(D.id_grabacion,0)
GROUP BY D.id_llamada,
B.id_fecha,
C.id_colaborador



