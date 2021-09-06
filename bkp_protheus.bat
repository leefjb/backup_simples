@echo off
if exist Z:\ (
	net use z: /delete /Y
	net use \\192.168.200.2\protheus$ /delete /Y
)
net use z: \\192.168.200.2\protheus$ /user:dominio\usuario senha

set origem=C:\TOTVS\ERP
set destino=Z:\Protheus_PRODUCAO

robocopy %origem%\A_FONTES %destino%\fontes /W:0 /R:0 /MIR /E
robocopy %origem%\A_INCLUDES %destino%\includes /W:0 /R:0 /MIR /E
robocopy %origem%\Protheus_PRODUCAO\Protheus_data\semaforo %destino%\semaforo /W:0 /R:0 /MIR /E
robocopy %origem%\Protheus_PRODUCAO\Protheus_data\workflow %destino%\workflow /W:0 /R:0 /MIR /E
robocopy %origem%\Protheus_PRODUCAO\Protheus_data\profile %destino%\profile /W:0 /R:0 /MIR /E
robocopy %origem%\Protheus_PRODUCAO\Protheus_data\system %destino%\system /W:0 /R:0 /MIR /E
