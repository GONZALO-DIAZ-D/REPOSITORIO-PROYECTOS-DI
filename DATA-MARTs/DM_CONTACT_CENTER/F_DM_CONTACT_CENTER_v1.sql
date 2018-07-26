

/****************************/
/** SCRIPT MODELO DE DATOS   **/
/**    DM_CONTACT_CENTER        */
/****************************/


CREATE TABLE [dbo].[DIM_COLABORADOR](
	[colaborador_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](45) NULL,
	[apellido_paterno] [varchar](35) NULL,
	[apellido_materno] [varchar](35) NULL,
	[usuario] [varchar](20) NULL,
 CONSTRAINT [DIM_COLABORADOR_PK] PRIMARY KEY CLUSTERED 
(
	[colaborador_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

;

CREATE TABLE [dbo].[DIM_FECHA](
	[fecha_id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[año] [int] NOT NULL,
	[mes] [int] NOT NULL,
	[trimestre] [int] NOT NULL,
	[semana] [int] NOT NULL,
	[dia] [int] NOT NULL,
	[dow] [int] NOT NULL,
	[hora] [int] NOT NULL,
 CONSTRAINT [DIM_FECHA_PK] PRIMARY KEY CLUSTERED 
(
	[fecha_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

;

CREATE TABLE [dbo].[DIM_LLAMADAS](
	[llamada_id] [int] NOT NULL,
	[grabacion_id] [bigint] NULL,
	[grupo_ACD] [varchar](50) NOT NULL,
	[estado] [varchar](25) NOT NULL,
	[calificacion] [varchar](40) NULL,
	[clasificacion] [varchar](40) NULL,
	[sub_clasificacion] [varchar](40) NULL,
	[transferida] [varchar](2) NULL,
	[destino] [varchar](50) NULL,
	[ani] [varchar](25) NULL,
 CONSTRAINT [DIM_LLAMADAS_PK] PRIMARY KEY CLUSTERED 
(
	[llamada_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

;

CREATE TABLE [dbo].[HECHOS_CC](
	[llamada_id] [int] NOT NULL,
	[colaborador_id] [int] NOT NULL,
	[fecha_id] [int] NOT NULL,
	[total_dialogo] [int] NOT NULL,
	[total_espera] [int] NOT NULL,
	[total_notas] [int] NOT NULL,
	[total_en_cola] [int] NOT NULL,
	[cantidad_llamadas] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[HECHOS_CC]  WITH CHECK ADD  CONSTRAINT [FK_DIM_COLABORADOR] FOREIGN KEY([colaborador_id])
REFERENCES [dbo].[DIM_COLABORADOR] ([colaborador_id])
GO

ALTER TABLE [dbo].[HECHOS_CC] CHECK CONSTRAINT [FK_DIM_COLABORADOR]
GO

ALTER TABLE [dbo].[HECHOS_CC]  WITH CHECK ADD  CONSTRAINT [FK_DIM_FECHA] FOREIGN KEY([fecha_id])
REFERENCES [dbo].[DIM_FECHA] ([fecha_id])
GO

ALTER TABLE [dbo].[HECHOS_CC] CHECK CONSTRAINT [FK_DIM_FECHA]
GO

ALTER TABLE [dbo].[HECHOS_CC]  WITH CHECK ADD  CONSTRAINT [FK_DIM_LLAMADA] FOREIGN KEY([llamada_id])
REFERENCES [dbo].[DIM_LLAMADAS] ([llamada_id])
GO

ALTER TABLE [dbo].[HECHOS_CC] CHECK CONSTRAINT [FK_DIM_LLAMADA]
GO


