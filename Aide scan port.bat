:Main
@echo off
chcp 65001 >nul
color 6
title SCAN PORT
cls

echo  ███████  ██████  █████  ███    ██     ██████   ██████  ██████  ████████ 
echo  ██      ██      ██   ██ ████   ██     ██   ██ ██    ██ ██   ██    ██    
echo  ███████ ██      ███████ ██ ██  ██     ██████  ██    ██ ██████     ██    
echo       ██ ██      ██   ██ ██  ██ ██     ██      ██    ██ ██   ██    ██    
echo  ███████  ██████ ██   ██ ██   ████     ██       ██████  ██   ██    ██    

echo.
echo Tout les ports marques LISTENING sur leur droite sont des ports qui attendent des informations
echo donc si AXON te hack bas tu verras leur ip en listening
echo.
echo Si tu vois une autre ip que la tienne c'est l'ip de AXON
echo.
echo.
netstat -ab
echo.
echo.
echo.

echo	│ 1.IPGéolocalisation
echo	│ 2.VérifAccèsDistance
echo	│ 3.VérifVirus
echo	│ 4.Sites
echo	│ 5.Partir

echo.
echo.
set /p picks=[+]Nombre: 

if %picks% == 1 goto Iplocation
if %picks% == 2 goto Verif
if %picks% == 4 goto Sites
if %picks% == 3 goto Antivirus
if %picks% == 5 exit




:Antivirus
cls
sfc /SCANNOW
pause>nul
goto :Main






:Verif
cls
echo.
echo.
echo Si vous voyez quelqu'un que vous ne connaissez pas supprimer le /!\ 
echo attention a ne pas supprimer d'autre appareil !
netplwiz
goto :Main


:Sites
color a
cls
start https://nmap.org/
goto:Main



:Iplocation

@echo off
color 4
cls
echo.
echo.
echo.
set /p nslook=[+]IP: 
echo.
echo.
echo ANALYSE PLUS POUSSE 
echo.
curl https://ipapi.co/%nslook%/json/
pause>nul

goto :Main


pause>nul
