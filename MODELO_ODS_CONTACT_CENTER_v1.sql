

/****************************/
/** SCRIPT MODELO DE DATOS **/
/**    ODS_CONTACT_CENTER   */
/****************************/


/* BASE DE DATOS */

DROP DATABASE ODS_CONTACT_CENTER;

CREATE DATABASE ODS_CONTACT_CENTER;

----------------------------------------------------------

/* TABLAS */

CREATE TABLE DETALLE_LLAMADAS (
                id_llamada INTEGER NOT NULL,
                id_grabacion BIGINT,
                fecha_llamada DATETIME,
                grupo_ACD VARCHAR(50),
                nombre VARCHAR(45),
                apellido_paterno VARCHAR(35),
                apellido_materno VARCHAR(35),
                usuario VARCHAR(20),
                estado VARCHAR(25),
                tiempo_dialogo SMALLINT,
                tiempo_espera SMALLINT,
                tiempo_notas SMALLINT,
                tiempo_en_cola TINYINT,
                calificacion VARCHAR(40),
                clasificacion VARCHAR(40),
                sub_clasificacion VARCHAR(40),
                transferida TINYINT,
                destino VARCHAR(50),
                ani VARCHAR(15)
); 

CREATE INDEX usuario ON DETALLE_LLAMADAS (usuario);

----------------------------------------------------------

CREATE TABLE USUARIOS (
                usuario VARCHAR(20) 
);
