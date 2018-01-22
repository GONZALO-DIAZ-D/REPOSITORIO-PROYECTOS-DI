

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
                id_grabacion BIGINT NULL,
                fecha_llamada DATETIME,
                grupo_ACD VARCHAR(50) NULL,
                nombre VARCHAR(45) NULL,
                apellido_paterno VARCHAR(35) NULL,
                apellido_materno VARCHAR(35) NULL,
                usuario VARCHAR(20) NULL,
                estado VARCHAR(25) NULL,
                tiempo_dialogo SMALLINT NULL,
                tiempo_espera SMALLINT NULL,
                tiempo_notas SMALLINT NULL,
                tiempo_en_cola TINYINT NULL,
                calificacion VARCHAR(40) NULL,
                clasificacion VARCHAR(40) NULL,
                sub_clasificacion VARCHAR(40) NULL,
                transferida TINYINT NULL,
                destino VARCHAR(50) NULL,
                ani VARCHAR(15) NULL
); 

CREATE INDEX usuario ON DETALLE_LLAMADAS (usuario);

----------------------------------------------------------

CREATE TABLE USUARIOS (
                usuario VARCHAR(20) NULL
);
