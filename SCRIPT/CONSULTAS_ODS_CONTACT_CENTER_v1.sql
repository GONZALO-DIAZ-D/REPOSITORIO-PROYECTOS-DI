
/******************************/
/** SCRIPT CONSULTAS PROCESO **/
/**    ODS_CONTACT_CENTER     */
/******************************/



DECLARE @fecha_proceso DATE;
SET @fecha_proceso = GETDATE();
--SET @fecha_proceso = '${fecha_proceso}';


SELECT 
A.cal_id AS id_llamada, 
G.grab_id AS id_grabacion, 
A.cal_Inicio AS fecha_llamada, 
B.descripcion AS grupo_ACD, 
C.Nombres AS nombre,
C.ApellidoPaterno AS apellido_paterno,
C.ApellidoMaterno AS apellido_materno, 
C.Login AS usuario, 
D.descripcion AS estado, 
A.cal_tDialog AS tiempo_dialogo, 
A.cal_tWait AS tiempo_espera,
A.cal_tNotas AS tiempo_notas, 
A.cal_que AS tiempo_en_cola, 
E.Description AS calificacion, 
'' AS clasificacion,
F.califSubDesc AS sub_clasificacion,
H.modo AS transferida,
I.descripcion AS destino,
A.cal_ANI AS ani 
FROM ccReportsRia.dbo.ccCallsIn A 
FULL OUTER JOIN ccReportsRia.dbo.ccInbound B ON A.Inbound_id = B.Inbound_id
FULL OUTER JOIN ccReportsRia.dbo.ccUsers C ON A.User_id = C.User_id
FULL OUTER JOIN ccReportsRia.dbo.ccStatusLLamada D ON A.statusCall_id = D.statusCall_id
FULL OUTER JOIN ccReportsRia.dbo.ccTipoCalif E ON A.calif_id = E.calif_id
FULL OUTER JOIN ccReportsRia.dbo.ccTipoCalifSub F ON A.califSub_id = F.califSub_id
FULL OUTER JOIN CCRecorderRIA.dbo.RIA_GRABACION G  ON A.cal_id = G.cal_id
FULL OUTER JOIN ccReportsRia.dbo.ccLogTransfers H ON A.cal_id = H.cal_id
FULL OUTER JOIN ccReportsRia.dbo.ccinbound I ON I.Inbound_id = H.destino 
WHERE CAST(A.cal_inicio AS DATE) = DATEADD(dd,0,CAST(@fecha_proceso AS DATE))


/* CARGA TABLA USUARIOS */


DECLARE @fecha_proceso DATE;
SET @fecha_proceso = GETDATE();
--SET @fecha_proceso = '${fecha_proceso}';


SELECT DISTINCT(usuario) 
FROM DETALLE_LLAMADAS 
WHERE CAST(fecha_llamada AS DATE) < CAST(@fecha_proceso AS DATE)



