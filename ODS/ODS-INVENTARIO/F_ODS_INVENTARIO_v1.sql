
/****************************/
/** SCRIPT MODELO DE DATOS   **/
/**       ODS_INVENTARIO               */
/****************************/


CREATE TABLE [dbo].[I_ANCILLARY](
	[ancillary_id] [int] IDENTITY(1,1) NOT NULL,
	[ancillaries_key] [int] NULL,
	[flight_date]  [date] NULL,
	[flight_number] [int]  NULL,
	[origin] [varchar](3) NULL,
	[destination] [varchar](3) NULL,
	[booked_class] [varchar](1) NULL,
	[charge] [varchar](4) NULL,
	[currency_code] [varchar](3) NULL,
	[count_ancillaries] [int] NULL,
	[amount] [float] NULL,
	[fecha_proceso] date NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[I_CURRENCY_EXCHANGE](
	[currency_id] [int] IDENTITY(1,1) NOT NULL,
	[currency_code] [varchar](3) NULL,
	[currency_code_base_1] [varchar](6) NULL,
	[currency_code_base_2] [varchar](4) NULL,
	[currency_base] [varchar](2) NULL,
	[currency_convertion] [float] NULL,
	[currency_divisor] [float] NULL,
	[currency_coefficient] [float] NULL,
	[fecha_proceso] date NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[I_FARE](
	[fare_id] [int] IDENTITY(1,1) NOT NULL,
	[carrier_code] [varchar](2) NULL,
	[farebasis] [varchar](16) NULL,
	[origin] [varchar](3) NULL,
	[destination] [varchar](3) NULL,
	[fare_currency] [varchar](2) NULL,
	[fare_amount] [float] NULL,
	[start_travel_date] [date] NULL,
	[end_travel_date] [date] NULL,
	[start_sales_date] [date] NULL,
	[end_sales_date] [date] NULL,
	[booked_class] [varchar](1) NULL,
	[trip_type] [int] NULL,
	[fecha_proceso] date NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[I_INVENTORY](
	[inventory_id] [int] IDENTITY(1,1) NOT NULL,
	[flight_date]  [date] NULL,
	[airline_code] [varchar] (2) NULL,
	[flight_number] [int]  NULL,
	[origin] [varchar] (3) NULL,
	[destination] [varchar] (3) NULL,
	[aircraft_type] [varchar] (3) NULL,
	[aircraft_code] [varchar] (5) NULL,
	[lid] [int] NULL,
	[capacity] [int] NULL,
	[departure_time] [time] (0) NULL,
	[arrival_time] [time] (0) NULL,
	[nest_capacities] [int] NULL,
	[nest_lids] [int] NULL,
	[fecha_proceso] date NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[I_SCHEDULE](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[flight_date]  [date] NULL,
	[airline_code] [varchar] (2) NULL,
	[flight_number] [int]  NULL,
	[origin] [varchar] (3) NULL,
	[destination] [varchar] (3) NULL,
	[flight_date_segment_1]  [date] NULL,
	[airline_code_segment_1] [varchar] (2) NULL,
	[flight_number_segment_1] [int]  NULL,
	[origin_segment_1] [varchar] (3) NULL,
	[destination_segment_1] [varchar] (3) NULL,
	[flight_date_segment_2]  [date] NULL,
	[airline_code_segment_2] [varchar] (2) NULL,
	[flight_number_segment_2] [int]  NULL,
	[origin_segment_2] [varchar] (3) NULL,
	[destination_segment_2] [varchar] (3) NULL,	
	[flight_date_segment_3]  [date] NULL,
	[airline_code_segment_3] [varchar] (2) NULL,
	[flight_number_segment_3] [int]  NULL,
	[origin_segment_3] [varchar] (3) NULL,
	[destination_segment_3] [varchar] (3) NULL,	
	[flight_date_segment_4]  [date] NULL,
	[airline_code_segment_4] [varchar] (2) NULL,
	[flight_number_segment_4] [int]  NULL,
	[origin_segment_4] [varchar] (3) NULL,
	[destination_segment_4] [varchar] (3) NULL,	
	[flight_date_segment_5]  [date] NULL,
	[airline_code_segment_5] [varchar] (2) NULL,
	[flight_number_segment_5] [int]  NULL,
	[origin_segment_5] [varchar] (3) NULL,
	[destination_segment_5] [varchar] (3) NULL,	
	[flight_date_segment_6]  [date] NULL,
	[airline_code_segment_6] [varchar] (2) NULL,
	[flight_number_segment_6] [int]  NULL,
	[origin_segment_6] [varchar] (3) NULL,
	[destination_segment_6] [varchar] (3) NULL,	
	[fecha_proceso] date NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[I_SEGMENT_INV](
	[segment_inv_id] [int] IDENTITY(1,1) NOT NULL,
	[flight_date]  [date] NULL,
	[airline_code] [varchar] (2) NULL,
	[flight_number] [int]  NULL,
	[origin] [varchar] (3) NULL,
	[destination] [varchar] (3) NULL,
	[origin_country] [varchar] (2) NULL,
	[destination_country] [varchar] (2) NULL,
	[standard_depart_time] [time] (0) NULL,
	[standard_arrival_time] [time] (0) NULL,
	[step_count] [int]  NULL,	
	[city_pair_1] [varchar](6)  NULL,
	[overnight_1] [varchar](1)  NULL,
	[seat_number] [varchar](4)  NULL,	
	[lift_status] [int]  NULL,
	[record_locator] [varchar](8)  NULL,	
	[passenger_key] [varchar](10)  NULL,
	[farebasis] [varchar](16)  NULL,	
	[booked_class] [varchar](1)  NULL,
	[type_code] [varchar](4)  NULL,
	[status] [varchar](2)  NULL,	
	[currency_flight] [varchar](2)  NULL,		
	[base_fare_amount] [float]  NULL,	
	[discount] [float]  NULL,	
	[discount_base] [float]  NULL,	
	[tax_1] [float]  NULL,	
	[tax_2] [float]  NULL,	
	[tax_3] [float]  NULL,	
	[tax_4] [float]  NULL,	
	[tax_5] [float]  NULL,	
	[tax_6] [float]  NULL,	
	[total_cost] [float]  NULL,	
	[booking_agent] [varchar](10)  NULL,	
	[booking_date] [date]  NULL,	
	[booking_time] [time](0)  NULL,
	[fecha_proceso] date NULL
) ON [PRIMARY]

;

