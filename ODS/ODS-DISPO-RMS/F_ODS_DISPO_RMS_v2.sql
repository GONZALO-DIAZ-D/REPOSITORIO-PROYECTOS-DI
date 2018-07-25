
/****************************/
/** SCRIPT MODELO DE DATOS   **/
/**       ODS_DISPO_RMS                */
/****************************/


CREATE TABLE [dbo].[O_DISPO_RMS_FINAL](
	[fecha_vista] [date] NOT NULL,
	[flightline] [varchar](50) NULL,
	[flightpath] [varchar](50) NULL,
	[fecha] [date] NULL,
	[wk] [int] NULL,
	[dept_time] [varchar](50) NULL,
	[total_cap] [int] NULL,
	[total_lid] [int] NULL,
	[total_bkgs] [int] NULL,
	[total_revenue] [int] NULL,
	[pickup_1] [int] NULL,
	[pickup_3] [int] NULL,
	[pickup_5] [int] NULL,
	[pickup_7] [int] NULL,
	[pickup_14] [int] NULL,
	[pickup_21] [int] NULL,
	[rev_p1] [int] NULL,
	[rev_p3] [int] NULL,
	[rev_p5] [int] NULL,
	[rev_p7] [int] NULL,
	[rev_p14] [int] NULL,
	[rev_p21] [int] NULL,
	[rule_name] [varchar](200) NULL,
	[total_lf_cap] [real] NULL,
	[total_lf_lid] [real] NULL,
	[fare_la_con_tasas] [int] NULL,
	[bkg_x] [int] NULL,
	[bkg_a] [int] NULL,
	[bkg_u] [int] NULL,
	[bkg_g] [int] NULL,
	[rev_g] [int] NULL,
	[pickup_1_g] [int] NULL,
	[lowest_fare_la] [int] NULL,
	[y_sa] [int] NULL,
	[k_sa] [int] NULL,
	[v_sa] [int] NULL,
	[h_sa] [int] NULL,
	[s_sa] [int] NULL,
	[b_sa] [int] NULL,
	[l_sa] [int] NULL,
	[r_sa] [int] NULL,
	[t_sa] [int] NULL,
	[m_sa] [int] NULL,
	[n_sa] [int] NULL,
	[q_sa] [int] NULL,
	[z_sa] [int] NULL,
	[x_sa] [int] NULL,
	[a_sa] [int] NULL,
	[u_sa] [int] NULL,
	[curr_h2_fare] [int] NULL,
	[grid_fare_la] [int] NULL,
	[ja] [int] NULL,
	[lowest_ja] [int] NULL,
	[od] [varchar](6) NULL,
	[numero_vuelo] [int] NULL,
	[dia] [int] NULL,
	[mes] [int] NULL,
	[año] [int] NULL,
	[dow] [int] NULL,
	[cluster] [varchar](7) NULL,
	[stops] [int] NULL,
	[subruta] [varchar](10) NULL,
	[cap_aux_y] [int] NULL,
	[ap] [int] NULL,
	[contador] [int] NULL,
	[dif_vs_la] [int] NULL,
	[dif_vs_ja] [int] NULL,
	[competitivo] [int] NULL,
	[descompetitivo] [int] NULL,
	[neutro] [int] NULL,
	[dispo_x] [int] NULL,
	[dispo_a] [int] NULL,
	[dispo_u] [int] NULL,
	[od_no_dir] [varchar](6) NULL,
	[agrupacion] [varchar](10) NULL,
	[par_o_impar] [varchar](5) NULL,
	[grupos] [varchar](10) NULL,
	[rango_ap] [varchar](5) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_DISPO_RMS](
	[id] [int] NULL,
	[flightline] [varchar](50) NULL,
	[flightpath] [varchar](50) NULL,
	[fecha] [varchar](50) NULL,
	[wk] [varchar](50) NULL,
	[dept_time] [varchar](50) NULL,
	[tot_cap] [varchar](50) NULL,
	[tot_lid] [varchar](50) NULL,
	[tot_bkd] [varchar](50) NULL,
	[total_revenue] [varchar](50) NULL,
	[tot_pickup_1] [varchar](50) NULL,
	[tot_pickup_3] [varchar](50) NULL,
	[tot_pickup_5] [varchar](50) NULL,
	[tot_pickup_7] [varchar](50) NULL,
	[tot_pickup_14] [varchar](50) NULL,
	[tot_pickup_21] [varchar](50) NULL,
	[totrevpkup_1] [varchar](50) NULL,
	[totrevpkup_3] [varchar](50) NULL,
	[totrevpkup_5] [varchar](50) NULL,
	[totrevpkup_7] [varchar](50) NULL,
	[totrevpkup_14] [varchar](50) NULL,
	[totrevpkup_21] [varchar](50) NULL,
	[rule_name] [varchar](100) NULL,
	[totcap_lf] [varchar](50) NULL,
	[totlid_lf] [varchar](50) NULL,
	[x_bk] [varchar](50) NULL,
	[a_bk] [varchar](50) NULL,
	[u_bk] [varchar](50) NULL,
	[g_bk] [varchar](50) NULL,
	[g_rev] [varchar](50) NULL,
	[g_pkup_1_bk] [varchar](50) NULL,
	[y_au] [varchar](50) NULL,
	[k_au] [varchar](50) NULL,
	[v_au] [varchar](50) NULL,
	[h_au] [varchar](50) NULL,
	[s_au] [varchar](50) NULL,
	[b_au] [varchar](50) NULL,
	[l_au] [varchar](50) NULL,
	[r_au] [varchar](50) NULL,
	[t_au] [varchar](50) NULL,
	[m_au] [varchar](50) NULL,
	[n_au] [varchar](50) NULL,
	[q_au] [varchar](50) NULL,
	[z_au] [varchar](50) NULL,
	[x_au] [varchar](50) NULL,
	[a_au] [varchar](50) NULL,
	[u_au] [varchar](50) NULL,
	[lowest_fare_h2] [varchar](50) NULL,
	[lowest_fare_la] [varchar](50) NULL,
	[lowest_fare_ja] [varchar](50) NULL
) ON [PRIMARY]

;

CREATE TABLE [dbo].[T_VUELO_ROUTING](
	[fecha_vuelo] [date] NULL,
	[numero_vuelo] [int] NULL,
	[routing] [varchar](25) NULL,
	[agrupacion] [varchar](10) NULL,
	[ruta] [varchar](10) NULL,
	[subruta] [varchar](10) NULL
) ON [PRIMARY]

;

 CREATE VIEW [dbo].[V_DISPO_RMS_FINAL] AS
   SELECT  
   fecha_vista,
   flightline,
   flightpath,
   fecha,
   wk,
   dept_time,
   total_cap,
   total_lid,
   total_bkgs,
   total_revenue,
   pickup_1,
   pickup_3,
   pickup_5,
   pickup_7,
   pickup_14,
   pickup_21,
   rev_P1,
   rev_P3,
   rev_P5,
   rev_P7,
   rev_P14,
   rev_P21,
   rule_name,
   total_lf_cap,
   total_lf_lid,
   fare_la_con_tasas,
   bkg_x,
   bkg_a,
   bkg_u,
   bkg_g,
   rev_g,
   pickup_1_g,
   lowest_fare_la,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE y_sa
   END AS Y_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE k_sa
   END AS K_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE v_sa
   END AS V_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE h_sa
   END AS H_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE s_sa
   END AS S_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE b_sa
   END AS B_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE l_sa
   END AS L_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE r_sa
   END AS R_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE t_sa
   END AS T_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE m_sa
   END AS M_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE n_sa
   END AS N_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE q_sa
   END AS Q_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE z_sa
   END AS Z_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE x_sa
   END AS X_SA,
   CASE 
    WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE a_sa
   END AS A_SA,
   CASE 
	WHEN fecha <= DATEADD(dd,-1,fecha_vista) THEN 0
	ELSE u_sa
   END AS U_SA,   
   curr_h2_fare,
   grid_fare_la,
   ja,
   lowest_ja,
   od,
   numero_vuelo,
   dia,
   mes,
   año,
   dow,
   cluster,
   stops,
   subruta,
   cap_aux_y,
   ap,
   contador,
   dif_vs_la,
   CASE
	WHEN lowest_ja = 0 THEN 0
	WHEN curr_h2_fare = 0 THEN 0
	ELSE dif_vs_ja
   END AS Dif_vs_JA,
   competitivo,
   descompetitivo,
   neutro,
   dispo_x,
   dispo_a,
   dispo_u,
   od_no_dir AS OD_NO_DIR,
   agrupacion AS AGRUPACION,
   par_o_impar AS PAR_O_IMPAR,
   grupos,
   rango_ap AS RANGO_AP   
   FROM O_DISPO_RMS_FINAL
   WHERE rule_name <> 'Vuelo Fantasma'
   AND fecha_vista BETWEEN DATEADD(dd,-20,CAST(GETDATE() AS DATE)) AND CAST(GETDATE() AS DATE)	

;

---------------------------------------------------------- INDICES -----------------------------------------------------------------------------


CREATE NONCLUSTERED INDEX [INDICE_DISPO_RMS_1] ON [dbo].[O_DISPO_RMS_FINAL]
(
	[fecha_vista] ASC
)
INCLUDE ( 	[a_sa],
	[agrupacion],
	[año],
	[ap],
	[b_sa],
	[bkg_a],
	[bkg_g],
	[bkg_u],
	[bkg_x],
	[cap_aux_y],
	[cluster],
	[competitivo],
	[contador],
	[curr_h2_fare],
	[dept_time],
	[descompetitivo],
	[dia],
	[dif_vs_ja],
	[dif_vs_la],
	[dispo_a],
	[dispo_u],
	[dispo_x],
	[dow],
	[fare_la_con_tasas],
	[fecha],
	[flightline],
	[flightpath],
	[grid_fare_la],
	[grupos],
	[h_sa],
	[ja],
	[k_sa],
	[l_sa],
	[lowest_fare_la],
	[lowest_ja],
	[m_sa],
	[mes],
	[n_sa],
	[neutro],
	[numero_vuelo],
	[od],
	[od_no_dir],
	[par_o_impar],
	[pickup_1],
	[pickup_1_g],
	[pickup_14],
	[pickup_21],
	[pickup_3],
	[pickup_5],
	[pickup_7],
	[q_sa],
	[r_sa],
	[rango_ap],
	[rev_g],
	[rev_p1],
	[rev_p14],
	[rev_p21],
	[rev_p3],
	[rev_p5],
	[rev_p7],
	[rule_name],
	[s_sa],
	[stops],
	[subruta],
	[t_sa],
	[total_bkgs],
	[total_cap],
	[total_lf_cap],
	[total_lf_lid],
	[total_lid],
	[total_revenue],
	[u_sa],
	[v_sa],
	[wk],
	[x_sa],
	[y_sa],
	[z_sa]) WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO


