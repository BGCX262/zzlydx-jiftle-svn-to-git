--����
--use master 
Sp_detach_db 'lydxDB'

--����
sp_attach_db 'lydxDB','D:\wwwroot\zzlydx\zzlydx\App_Data\lydxDB.mdf',
'D:\wwwroot\zzlydx\zzlydx\App_Data\lydxDB.ldf'