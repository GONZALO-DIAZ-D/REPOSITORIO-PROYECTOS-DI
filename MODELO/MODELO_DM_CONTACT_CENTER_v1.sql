
/****************************/
/** SCRIPT MODELO DE DATOS **/
/**    DM_CONTACT_CENTER    */
/****************************/


DROP DATABASE DM_CONTACT_CENTER;

CREATE DATABASE DM_CONTACT_CENTER;


CREATE TABLE DIM_COLABORADOR (
                id_colaborador INTEGER IDENTITY(1,1) NOT NULL,
                nombre VARCHAR(45) NULL,
                apellido_paterno VARCHAR(35) NULL,
                apellido_materno VARCHAR(35) NULL,
                usuario VARCHAR(20) NULL,
                CONSTRAINT DIM_COLABORADOR_PK PRIMARY KEY (id_colaborador)
);

CREATE INDEX id_colaborador ON DIM_COLABORADOR (id_colaborador);


CREATE TABLE DIM_FECHA (
                id_fecha INTEGER IDENTITY(1,1) NOT NULL,
                fecha DATE NOT NULL,
                año INTEGER NOT NULL,
                mes INTEGER NOT NULL,
                trimestre INTEGER NOT NULL,
                semana INTEGER NOT NULL,
                dia INTEGER NOT NULL,
                dow INTEGER NOT NULL,
                hora INTEGER NOT NULL,
                CONSTRAINT DIM_FECHA_PK PRIMARY KEY (id_fecha)
);

CREATE INDEX id_fecha ON DIM_FECHA (id_fecha);


CREATE TABLE DIM_LLAMADAS (
                id_llamada INTEGER NOT NULL,
                id_grabacion BIGINT NULL,
                grupo_ACD VARCHAR(50) NOT NULL,
                estado VARCHAR(25) NOT NULL,
                calificacion VARCHAR(40) NULL,
                clasificacion VARCHAR(40) NULL,
                sub_clasificacion VARCHAR(40) NULL,
                transferida VARCHAR(2) NULL,
                destino VARCHAR(50) NULL,
                ani VARCHAR(25) NULL,
                CONSTRAINT DIM_LLAMADAS_PK PRIMARY KEY (id_llamada)
);

CREATE INDEX id_llamada ON DIM_LLAMADAS (id_llamada);


CREATE TABLE HECHOS_CC (
                id_llamada INTEGER NOT NULL,
                id_colaborador INTEGER NOT NULL,
                id_fecha INTEGER NOT NULL,
                total_dialogo INTEGER NOT NULL,
                total_espera INTEGER NOT NULL,
                total_notas INTEGER NOT NULL,
                total_en_cola INTEGER NOT NULL,
                cantidad_llamadas INTEGER NOT NULL,
                CONSTRAINT FK_DIM_LLAMADA FOREIGN KEY (id_llamada) REFERENCES DIM_LLAMADAS(id_llamada),
                CONSTRAINT FK_DIM_COLABORADOR FOREIGN KEY (id_colaborador) REFERENCES DIM_COLABORADOR(id_colaborador),
                CONSTRAINT FK_DIM_FECHA FOREIGN KEY (id_fecha) REFERENCES DIM_FECHA(id_fecha)
);
