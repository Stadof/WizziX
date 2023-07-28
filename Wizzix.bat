@echo off
color 0a
title WizziX -- BY Stadof


:menu

echo.
echo.
echo                                                           ###       ##
echo                                                            ###     ##
echo     ##          ##  ######  ########  ########  ######      ###   ## 
echo     ##          ##    ##         ##        ##     ##         ### ##
echo     ##          ##    ##        ##        ##      ##          ####
echo     ##    ##    ##    ##       ##        ##       ##         ### ##
echo     ##    ##    ##    ##      ##        ##        ##        ###   ##
echo     ##    ##    ##    ##     ##        ##         ##       ###     ##  
echo       ####  ####    ######  ########  ########  ######    ###       ##
echo                                                          ###         ##   v 1.0 
echo                                                         ###               
echo                                                        ###
echo.
echo.
echo                    Escribe 'help' si necesitas ayuda
echo.

:consola
set /p a=" ~ $WizziX> "
if %a%==save goto clavewifitxt
if %a%==ssid goto claveconsola
if %a%==ssids goto claveconsola
if %a%==help goto ayuda
if %a%==clear goto eliminar
if %a%==ip goto ip


:clavewifitxt
netsh wlan export profile key=clear > nul
powershell -ExecutionPolicy ByPass -File Wizzix.ps1 >nul
echo.
echo  -   Claves y SSID's guardados correctamente!
echo.
goto consola

:ayuda
echo.
echo.
echo -  MENU DE AYUDA:
echo.
echo -  'help' Para acceder al menu de ayuda.
echo -  'ssid' Ver los SSID's a los que te has conectado anteriormente.
echo -  'save' GUARDAR los SSID's y las claves guardadas en un archivo de texto (ClavesWifi.txt).
echo -  'ip' Mostrar tu direccion ip
echo -  'clear' Limpiar la pantalla
echo.
echo.
goto consola

:claveconsola
netsh wlan show profile key=clear
echo.
echo.
goto consola

:eliminar
cls
goto consola

:ip
ipconfig
echo.
echo.
goto consola

pause > nul

