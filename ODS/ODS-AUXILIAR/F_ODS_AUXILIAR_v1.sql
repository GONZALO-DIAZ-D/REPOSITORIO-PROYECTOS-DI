
/****************************/
/** SCRIPT MODELO DE DATOS  **/
/**         ODS_AUXILIAR                  */
/****************************/


CREATE TABLE [dbo].[P_CALENDARIO](
	[calendario_id] [int] IDENTITY(1,1) NOT NULL,
	[calendar_date] [date] NOT NULL,
	[calendar_year] [int] NOT NULL,
	[calendar_month] [int] NOT NULL,
	[calendar_day] [int] NOT NULL,
	[dow] [int] NOT NULL,
	[dow_name] [varchar](10) NOT NULL,
	[first_dow] [date] NOT NULL,
	[last_dow] [date] NOT NULL,
	[first_date_of_month] [date] NOT NULL,
	[last_date_of_month] [date] NOT NULL,
	[first_date_of_year] [date] NOT NULL,
	[last_date_of_year] [date] NOT NULL,
	[weekend] [int] NOT NULL,
	[weekday] [int] NOT NULL,
	[week_number] [int] NOT NULL,
 CONSTRAINT [P_CALENDARIO_PK] PRIMARY KEY CLUSTERED 
(
	[calendario_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

;

CREATE TABLE [dbo].[P_DISTANCIA](
	[distancia_id] [int] IDENTITY(1,1) NOT NULL,
	[tramo_nd] [varchar](6) NOT NULL,
	[distancia] [int] NOT NULL,
	[inicio_vigencia] [date] NOT NULL,
	[fin_vigencia] [date] NOT NULL,
 CONSTRAINT [P_DISTANCIA_PK] PRIMARY KEY CLUSTERED 
(
	[distancia_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

;

CREATE TABLE [dbo].[P_FAREBASIS](
	[farebasis_id] [int] IDENTITY(1,1) NOT NULL,
	[farebasis] [varchar](16) NULL,
	[tipo_1] [varchar](10) NULL,
	[pago] [varchar](1) NULL,
	[tipo_2] [varchar](5) NULL,
	[inicio_vigencia] [date] NOT NULL,
	[fin_vigencia] [date] NOT NULL,
 CONSTRAINT [P_FAREBASIS_PK] PRIMARY KEY CLUSTERED 
(
	[farebasis_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

;

CREATE TABLE [dbo].[P_IATA_ICAO](
	[iata_icao_id] [int] IDENTITY(1,1) NOT NULL,
	[iata] [varchar](8) NOT NULL,
	[oaci] [varchar](5) NOT NULL,
 CONSTRAINT [P_IATA_ICAO_PK] PRIMARY KEY CLUSTERED 
(
	[iata_icao_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

;

CREATE TABLE [dbo].[P_MODELO_RUTA](
	[ruta_id] [int] IDENTITY(1,1) NOT NULL,
	[routing] [varchar](25) NOT NULL,
	[ruta] [varchar](10) NOT NULL,
	[subruta] [varchar](10) NOT NULL,
	[agrupacion] [varchar](10) NOT NULL,
	[routing_eerr] [varchar](25) NULL,
	[inicio_vigencia] [date] NOT NULL,
	[fin_vigencia] [date] NOT NULL,
 CONSTRAINT [P_MODELO_RUTA_PK] PRIMARY KEY CLUSTERED 
(
	[ruta_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

;

CREATE TABLE [dbo].[P_MODELO_SSR](
	[modelo_ssr_id] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [varchar](30) NULL,
	[cargo] [varchar](4) NULL,
	[ssr_code] [varchar](4) NULL,
	[ancilliary] [varchar](50) NULL,
	[tipo] [varchar](6) NULL,
	[inicio_vigencia] [date] NOT NULL,
	[fin_vigencia] [date] NOT NULL,
 CONSTRAINT [P_MODELO_SSR_PK] PRIMARY KEY CLUSTERED 
(
	[modelo_ssr_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

;

CREATE TABLE [dbo].[P_TRAMO_SEGMENTO](
	[tramo_seg_id] [int] IDENTITY(1,1) NOT NULL,
	[numero_vuelo] [int] NOT NULL,
	[fecha_vuelo] [date] NOT NULL,
	[origen_tramo] [varchar](3) NOT NULL,
	[destino_tramo] [varchar](3) NOT NULL,
	[origen_seg] [varchar](3) NOT NULL,
	[destino_seg] [varchar](3) NOT NULL,
 CONSTRAINT [P_TRAMO_SEGMENTO_PK] PRIMARY KEY CLUSTERED 
(
	[tramo_seg_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

;

CREATE TABLE [dbo].[P_ZONA_HORARIA](
	[zona_horaria_id] [int] IDENTITY(1,1) NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
	[iata] [varchar](8) NOT NULL,
	[oaci] [varchar](5) NOT NULL,
	[pais] [varchar](2) NOT NULL,
	[diferencia_horaria] [int] NOT NULL,
	[inicio_vigencia] [date] NOT NULL,
	[fin_vigencia] [date] NOT NULL,
 CONSTRAINT [P_ZONA_HORARIA_PK] PRIMARY KEY CLUSTERED 
(
	[zona_horaria_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


