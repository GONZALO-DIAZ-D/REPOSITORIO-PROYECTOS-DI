 C:
 cd "C:\Pentaho\data-integration"
 kitchen.bat /rep:"REPOSITORIO_DI_PROD" /job:"CARGA_ODS_CONTACT_CENTER" /dir:"/COMERCIAL/ODS_CONTACT_CENTER/" /user:GONZALO-DIAZ /pass:DI2018prod /level:Basic > "E:\ETLs\LOG\CARGA_ODS_CONTACT_CENTER_%Date:~6,4%%Date:~3,2%%Date:~0,2%_%time:~0,2%%time:~3,2%.log"



