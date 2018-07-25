/****************************/
/** SCRIPT MODELO DE DATOS   **/
/**       ODS_OPERACIONES            */
/****************************/


CREATE TABLE [dbo].[I_COMBUSTIBLE](
	[fecha_local] [date] NULL,
	[fecha_utc] [date] NULL,
	[numero_vuelo] [int] NULL,
	[origen] [varchar](3) NULL,
	[destino] [varchar](3) NULL,
	[leg] [int] NULL,
	[status] [varchar](20) NULL,
	[matricula] [varchar](3) NULL,
	[block_off_fuel] [float] NULL,
	[block_on_fuel] [float] NULL,
	[consumo_klg] [float] NULL,
	[carguio_lts] [float] NULL,
	[apu_kg] [float] NULL,
	[fuente] [varchar](2) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[I_FS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ac] [varchar](25) NULL,
	[departure_date] [varchar](10) NULL,
	[flight_number] [varchar](10) NULL,
	[boardpoint] [varchar](4) NULL,
	[offpoint] [varchar](4) NULL,
	[block_off_fuel] [float] NULL,
	[block_on_fuel] [float] NULL,
	[eng1_start] [varchar](11) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[I_LEG](
	[datop] [varchar](10) NULL,
	[fltid] [varchar](8) NULL,
	[legno] [int] NULL,
	[depstn] [varchar](3) NULL,
	[arrstn] [varchar](3) NULL,
	[std] [varchar](19) NULL,
	[sta] [varchar](19) NULL,
	[stdcorr] [int] NULL,
	[status] [varchar](3) NULL,
	[etd] [varchar](19) NULL,
	[eta] [varchar](19) NULL,
	[atd] [varchar](19) NULL,
	[toff] [varchar](19) NULL,
	[tdwm] [varchar](19) NULL,
	[ata] [varchar](19) NULL,
	[tri_fltid] [varchar](8) NULL,
	[div_rcode] [varchar](2) NULL,
	[div_flag] [varchar](1) NULL,
	[pax] [varchar](12) NULL,
	[depdelay1] [varchar](3) NULL,
	[depdur1] [int] NULL,
	[depdelay2] [varchar](3) NULL,
	[depdur2] [int] NULL,
	[depdelay3] [varchar](3) NULL,
	[depdur3] [int] NULL,
	[depdelay4] [varchar](3) NULL,
	[depdur4] [int] NULL,
	[gate] [varchar](5) NULL,
	[stc] [varchar](1) NULL,
	[version] [varchar](7) NULL,
	[orig_actyp] [varchar](3) NULL,
	[actyp] [varchar](3) NULL,
	[acown] [varchar](3) NULL,
	[ac] [varchar](10) NULL,
	[arrdelay1] [varchar](3) NULL,
	[arrdur1] [int] NULL,
	[arrdelay2] [varchar](3) NULL,
	[arrdur2] [int] NULL,
	[arrdelay3] [varchar](3) NULL,
	[arrdur3] [int] NULL,
	[arrdelay4] [varchar](3) NULL,
	[arrdur4] [int] NULL,
	[mvt] [varchar](255) NULL,
	[sitext] [varchar](255) NULL,
	[cfmu_type] [varchar](3) NULL,
	[cfmu_subtype] [varchar](1) NULL,
	[eobt] [varchar](19) NULL,
	[ctot] [varchar](19) NULL,
	[min_last_duty] [varchar](19) NULL,
	[local_datop] [varchar](10) NULL,
	[depgate] [varchar](20) NULL,
	[arrgate] [varchar](20) NULL,
	[charterer] [varchar](1) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[I_MAIL_ACARS](
	[mail] [varchar](1000) NULL,
	[parametro] [varchar](250) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[I_PLAN_LEG](
	[datop] [varchar](10) NULL,
	[fltid] [varchar](8) NULL,
	[legno] [int] NULL,
	[depstn] [varchar](3) NULL,
	[arrstn] [varchar](3) NULL,
	[std] [varchar](19) NULL,
	[sta] [varchar](19) NULL,
	[stdcorr] [int] NULL,
	[status] [varchar](3) NULL,
	[etd] [varchar](19) NULL,
	[eta] [varchar](19) NULL,
	[atd] [varchar](19) NULL,
	[toff] [varchar](19) NULL,
	[tdwm] [varchar](19) NULL,
	[ata] [varchar](19) NULL,
	[tri_fltid] [varchar](8) NULL,
	[div_rcode] [varchar](2) NULL,
	[div_flag] [varchar](1) NULL,
	[pax] [varchar](12) NULL,
	[depdelay1] [varchar](3) NULL,
	[depdur1] [int] NULL,
	[depdelay2] [varchar](3) NULL,
	[depdur2] [int] NULL,
	[depdelay3] [varchar](3) NULL,
	[depdur3] [int] NULL,
	[depdelay4] [varchar](3) NULL,
	[depdur4] [int] NULL,
	[gate] [varchar](5) NULL,
	[stc] [varchar](1) NULL,
	[version] [varchar](7) NULL,
	[orig_actyp] [varchar](3) NULL,
	[actyp] [varchar](3) NULL,
	[acown] [varchar](3) NULL,
	[ac] [varchar](10) NULL,
	[arrdelay1] [varchar](3) NULL,
	[arrdur1] [int] NULL,
	[arrdelay2] [varchar](3) NULL,
	[arrdur2] [int] NULL,
	[arrdelay3] [varchar](3) NULL,
	[arrdur3] [int] NULL,
	[arrdelay4] [varchar](3) NULL,
	[arrdur4] [int] NULL,
	[mvt] [varchar](255) NULL,
	[sitext] [varchar](255) NULL,
	[cfmu_type] [varchar](3) NULL,
	[cfmu_subtype] [varchar](1) NULL,
	[eobt] [varchar](19) NULL,
	[ctot] [varchar](19) NULL,
	[min_last_duty] [varchar](19) NULL,
	[local_datop] [varchar](10) NULL,
	[depgate] [varchar](20) NULL,
	[arrgate] [varchar](20) NULL,
	[charterer] [varchar](1) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[O_OPERACIONES](
	[operation_date] [date] NULL,
	[local_date] [date] NULL,
	[operation_flight_number] [varchar](5) NULL,
	[flight_number] [int] NULL,
	[boardpoint] [varchar](3) NULL,
	[offpoint] [varchar](3) NULL,
	[std] [smalldatetime] NULL,
	[sta] [smalldatetime] NULL,
	[stdcorr] [int] NULL,
	[status] [varchar](3) NULL,
	[etd] [smalldatetime] NULL,
	[eta] [smalldatetime] NULL,
	[atd] [smalldatetime] NULL,
	[toff] [smalldatetime] NULL,
	[tdwn] [smalldatetime] NULL,
	[ata] [smalldatetime] NULL,
	[depdelay1] [varchar](5) NULL,
	[depdur1] [int] NULL,
	[depdelay2] [varchar](5) NULL,
	[depdur2] [int] NULL,
	[depdelay3] [varchar](5) NULL,
	[depdur3] [int] NULL,
	[depdelay4] [varchar](5) NULL,
	[depdur4] [int] NULL,
	[gate] [varchar](5) NULL,
	[orig_actyp] [varchar](3) NULL,
	[actyp] [varchar](3) NULL,
	[ac] [varchar](3) NULL,
	[arrdelay1] [varchar](5) NULL,
	[arrdur1] [int] NULL,
	[arrdelay2] [varchar](5) NULL,
	[arrdur2] [int] NULL,
	[arrdelay3] [varchar](5) NULL,
	[arrdur3] [int] NULL,
	[arrdelay4] [varchar](5) NULL,
	[arrdur4] [int] NULL,
	[depgate] [varchar](20) NULL,
	[arrgate] [varchar](20) NULL,
	[open_door] [smalldatetime] NULL,
	[closed_door] [smalldatetime] NULL,
	[engine_1_start] [smalldatetime] NULL,
	[engine_1_stop] [smalldatetime] NULL,
	[engine_2_start] [smalldatetime] NULL,
	[engine_2_stop] [smalldatetime] NULL,
	[parking_break_on] [smalldatetime] NULL,
	[block_off_fuel] [float] NULL,
	[block_on_fuel] [float] NULL,
	[burn_fuel] [float] NULL,
	[fuel_uplift] [float] NULL,
	[apu_burn_fuel] [float] NULL,
	[source_fuel] [varchar](2) NULL,
	[leg_number] [int] NULL,
	[diferencia_horaria] [int] NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[O_PARAMETRO_ACARS](
	[matricula] [varchar](6) NULL,
	[origen] [varchar](4) NULL,
	[destino] [varchar](4) NULL,
	[numero_vuelo] [int] NULL,
	[fecha] [date] NULL,
	[hora] [time](0) NULL,
	[parametro] [varchar](25) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_AGRUPA_DUP_FS](
	[ac] [varchar](10) NULL,
	[departure_date] [date] NULL,
	[flight_number] [int] NULL,
	[boardpoint] [varchar](3) NULL,
	[offpoint] [varchar](3) NULL,
	[block_off_fuel] [float] NULL,
	[block_on_fuel] [float] NULL,
	[eng1_start] [time](0) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_CORRIGE_FECHA](
	[id] [int] NULL,
	[ac] [varchar](10) NULL,
	[departure_date_fixed] [date] NULL,
	[flight_number] [int] NULL,
	[boardpoint] [varchar](3) NULL,
	[offpoint] [varchar](3) NULL,
	[block_off_fuel] [float] NULL,
	[block_on_fuel] [float] NULL,
	[año] [int] NULL,
	[min_id_año] [int] NULL,
	[max_id_año] [int] NULL,
	[desv_max_id_dep] [int] NULL,
	[eng1_start] [time](0) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_CORRIGE_FS](
	[id] [int] NULL,
	[ac] [varchar](10) NULL,
	[departure_date] [date] NULL,
	[flight_number] [int] NULL,
	[boardpoint] [varchar](3) NULL,
	[offpoint] [varchar](3) NULL,
	[block_off_fuel] [float] NULL,
	[block_on_fuel] [float] NULL,
	[año] [int] NULL,
	[min_id] [int] NULL,
	[max_id] [int] NULL,
	[eng1_start] [time](0) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_LEG](
	[operation_date] [date] NULL,
	[comercial_date] [date] NULL,
	[operation_flight_number] [varchar](5) NULL,
	[comercial_flight_number] [int] NULL,
	[boardpoint] [varchar](3) NULL,
	[offpoint] [varchar](3) NULL,
	[std] [smalldatetime] NULL,
	[sta] [smalldatetime] NULL,
	[stdcorr] [int] NULL,
	[status] [varchar](3) NULL,
	[etd] [smalldatetime] NULL,
	[eta] [smalldatetime] NULL,
	[atd] [smalldatetime] NULL,
	[toff] [smalldatetime] NULL,
	[tdwn] [smalldatetime] NULL,
	[ata] [smalldatetime] NULL,
	[depdelay1] [varchar](5) NULL,
	[depdur1] [int] NULL,
	[depdelay2] [varchar](5) NULL,
	[depdur2] [int] NULL,
	[depdelay3] [varchar](5) NULL,
	[depdur3] [int] NULL,
	[depdelay4] [varchar](5) NULL,
	[depdur4] [int] NULL,
	[gate] [varchar](5) NULL,
	[orig_actyp] [varchar](3) NULL,
	[actyp] [varchar](3) NULL,
	[ac] [varchar](3) NULL,
	[arrdelay1] [varchar](5) NULL,
	[arrdur1] [int] NULL,
	[arrdelay2] [varchar](5) NULL,
	[arrdur2] [int] NULL,
	[arrdelay3] [varchar](5) NULL,
	[arrdur3] [int] NULL,
	[arrdelay4] [varchar](5) NULL,
	[arrdur4] [int] NULL,
	[depgate] [varchar](20) NULL,
	[arrgate] [varchar](20) NULL,
	[duplicado] [bigint] NULL,
	[leg_number] [int] NULL,
	[diferencia_horaria] [int] NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_PARAMETROS](
	[matricula] [varchar](6) NULL,
	[fecha] [varchar](10) NULL,
	[origen] [varchar](4) NULL,
	[destino] [varchar](4) NULL,
	[numero_vuelo] [varchar](4) NULL,
	[hora_formateada] [varchar](8) NULL,
	[parametro] [varchar](25) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_PARSEA_FS](
	[id] [int] NULL,
	[ac] [varchar](10) NULL,
	[departure_date] [date] NULL,
	[flight_number] [int] NULL,
	[boardpoint] [varchar](3) NULL,
	[offpoint] [varchar](3) NULL,
	[block_off_fuel] [float] NULL,
	[block_on_fuel] [float] NULL,
	[eng1_start] [time](0) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_PARSEA_PARAMETROS](
	[matricula] [varchar](6) NULL,
	[origen] [varchar](4) NULL,
	[destino] [varchar](4) NULL,
	[numero_vuelo] [int] NULL,
	[fecha] [varchar](10) NULL,
	[hora] [varchar](8) NULL,
	[parametro] [varchar](25) NULL
) ON [PRIMARY]



