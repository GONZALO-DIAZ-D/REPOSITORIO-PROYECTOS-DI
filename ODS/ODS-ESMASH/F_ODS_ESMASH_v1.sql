

/***************************/
/** SCRIPT MODELO DE DATOS **/
/**       ODS_ESMASH                    */
/***************************/



CREATE TABLE [dbo].[I_TIPO_CAMBIO](
	[año] [int] NULL,
	[mes] [int] NULL,
	[tipo_cambio] [float] NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[O_RESULTADO_INFORME](
	[año] [int] NULL,
	[mes] [int] NULL,
	[negocio] [varchar](3) NULL,
	[mercado] [varchar](2) NULL,
	[iata] [varchar](8) NULL,
	[shortname] [varchar](50) NULL,
	[od] [varchar](7) NULL,
	[usd_ind] [float] NULL,
	[usd_sky] [float] NULL,
	[clp_ind] [float] NULL,
	[clp_sky] [float] NULL,
	[tkt_ind] [float] NULL,
	[tkt_sky] [float] NULL,
	[ruta] [varchar](10) NULL,
	[grupo] [varchar](100) NULL,
	[segmento] [varchar](20) NULL,
	[tipo_cambio] [float] NULL,
	[ruta_operada] [varchar](10) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[P_GRUPO_NEW](
	[grupo] [varchar](100) NULL,
	[iata] [varchar](8) NULL,
	[segmento] [varchar](20) NULL,
	[pos] [varchar](2) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[P_OD](
	[ruta] [varchar](10) NULL,
	[od] [varchar](7) NULL,
	[ruta_operada] [varchar](10) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_ESMASH](
	[año] [int] NULL,
	[mes] [int] NULL,
	[negocio] [varchar](3) NULL,
	[mercado] [varchar](2) NULL,
	[iata] [varchar](8) NULL,
	[shortname] [varchar](50) NULL,
	[od] [varchar](7) NULL,
	[usd_ind] [float] NULL,
	[usd_sky] [float] NULL,
	[tkt_ind] [float] NULL,
	[tkt_sky] [float] NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_ESMASH_AR](
	[año] [int] NULL,
	[mes] [int] NULL,
	[negocio] [varchar](3) NULL,
	[mercado] [varchar](2) NULL,
	[iata] [varchar](8) NULL,
	[shortname] [varchar](50) NULL,
	[od] [varchar](7) NULL,
	[usd_ind] [float] NULL,
	[usd_sky] [float] NULL,
	[tkt_ind] [float] NULL,
	[tkt_sky] [float] NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_ESMASH_CL_DOM](
	[año] [int] NULL,
	[mes] [int] NULL,
	[negocio] [varchar](3) NULL,
	[mercado] [varchar](2) NULL,
	[iata] [varchar](8) NULL,
	[shortname] [varchar](50) NULL,
	[od] [varchar](7) NULL,
	[usd_ind] [float] NULL,
	[usd_sky] [float] NULL,
	[tkt_ind] [float] NULL,
	[tkt_sky] [float] NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_ESMASH_CL_INT](
	[año] [int] NULL,
	[mes] [int] NULL,
	[negocio] [varchar](3) NULL,
	[mercado] [varchar](2) NULL,
	[iata] [varchar](8) NULL,
	[shortname] [varchar](50) NULL,
	[od] [varchar](7) NULL,
	[usd_ind] [float] NULL,
	[usd_sky] [float] NULL,
	[tkt_ind] [float] NULL,
	[tkt_sky] [float] NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_ESMASH_PE](
	[año] [int] NULL,
	[mes] [int] NULL,
	[negocio] [varchar](3) NULL,
	[mercado] [varchar](2) NULL,
	[iata] [varchar](8) NULL,
	[shortname] [varchar](50) NULL,
	[od] [varchar](7) NULL,
	[usd_ind] [float] NULL,
	[usd_sky] [float] NULL,
	[tkt_ind] [float] NULL,
	[tkt_sky] [float] NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_ESMASH_UY](
	[año] [int] NULL,
	[mes] [int] NULL,
	[negocio] [varchar](3) NULL,
	[mercado] [varchar](2) NULL,
	[iata] [varchar](8) NULL,
	[shortname] [varchar](50) NULL,
	[od] [varchar](7) NULL,
	[usd_ind] [float] NULL,
	[usd_sky] [float] NULL,
	[tkt_ind] [float] NULL,
	[tkt_sky] [float] NULL
) ON [PRIMARY]
GO













