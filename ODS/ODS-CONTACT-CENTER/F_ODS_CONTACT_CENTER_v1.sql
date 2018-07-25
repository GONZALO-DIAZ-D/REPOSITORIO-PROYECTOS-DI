

/****************************/
/** SCRIPT MODELO DE DATOS **/
/**    ODS_CONTACT_CENTER   */
/****************************/



CREATE TABLE [dbo].[I_USUARIOS](
	[usuario] [varchar](20) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[I_DETALLE_LLAMADAS](
	[llamada_id] [int] NOT NULL,
	[grabacion_id] [bigint] NULL,
	[fecha_llamada] [datetime] NULL,
	[grupo_acd] [varchar](50) NULL,
	[nombre] [varchar](45) NULL,
	[apellido_paterno] [varchar](35) NULL,
	[apellido_materno] [varchar](35) NULL,
	[usuario] [varchar](20) NULL,
	[estado] [varchar](25) NULL,
	[tiempo_dialogo] [smallint] NULL,
	[tiempo_espera] [smallint] NULL,
	[tiempo_notas] [smallint] NULL,
	[tiempo_en_cola] [tinyint] NULL,
	[calificacion] [varchar](40) NULL,
	[clasificacion] [varchar](40) NULL,
	[sub_clasificacion] [varchar](40) NULL,
	[transferida] [tinyint] NULL,
	[destino] [varchar](50) NULL,
	[ani] [varchar](15) NULL
) ON [PRIMARY]

;





