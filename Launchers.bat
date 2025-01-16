@echo off
title LAUNCHER
:menu
cls
echo.
echo.
echo     #########################################
echo     #                                       #
echo     #               LAUNCHER                #
echo     #                                       #
echo     #########################################
echo.
echo                 1) Launchers Oficiales
echo                 2) Launchers Alternativos
echo.
echo                 0) Salir
echo.
set /p choice="Selecciona una opcion: "

if %choice%==1 goto oficiales
if %choice%==2 goto alternativos
if %choice%==0 exit
goto menu

:oficiales
cls
echo.
echo.
echo           #########################################
echo           #         Launchers Oficiales           #
echo           #########################################
echo.
echo               1) Epic Games Launcher
echo               2) Steam
echo               3) Battle.net
echo               4) EA
echo               5) GOG 2.0
echo.
echo               0) Volver al menu principal
echo.
set /p choice="Selecciona una opcion: "

if %choice%==1 goto epic
if %choice%==2 goto steam
if %choice%==3 goto battlenet
if %choice%==4 goto ea
if %choice%==5 goto gog
if %choice%==0 goto menu
goto oficiales

:epic
echo [Epic Games Launcher] Descargando...
powershell -Command "& { (New-Object System.Net.WebClient).DownloadFile('https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi', 'EpicGamesLauncherInstaller.msi') }"
if %errorlevel% neq 0 (
    echo Error durante la descarga de Epic Games Launcher.
    pause
    goto menu
)
echo [Epic Games Launcher] Instalando...
msiexec /i EpicGamesLauncherInstaller.msi /quiet /norestart
if %errorlevel% neq 0 (
    echo Error durante la instalacion de Epic Games Launcher.
    pause
    goto menu
)
echo Instalación de Epic Games Launcher completada.
pause
goto menu

:steam
echo [Steam] Descargando...
powershell -Command "& { (New-Object System.Net.WebClient).DownloadFile('https://cdn.fastly.steamstatic.com/client/installer/SteamSetup.exe', 'SteamSetup.exe') }"
if %errorlevel% neq 0 (
    echo Error durante la descarga de Steam.
    pause
    goto menu
)
echo [Steam] Instalando...
start /wait SteamSetup.exe /S
if %errorlevel% neq 0 (
    echo Error durante la instalacion de Steam.
    pause
    goto menu
)
echo Instalacion de Steam completada.
pause
goto menu

:battlenet
echo [Battle.net] Descargando...
powershell -Command "& { (New-Object System.Net.WebClient).DownloadFile('https://downloader.battle.net//download/getInstallerForGame?os=win&gameProgram=BATTLENET_APP&version=Live', 'BattleNetInstaller.exe') }"
if %errorlevel% neq 0 (
    echo Error durante la descarga de Battle.net.
    pause
    goto menu
)
echo [Battle.net] Instalando...
start /wait BattleNetInstaller.exe --install
if %errorlevel% neq 0 (
    echo Error durante la instalacion de Battle.net.
    pause
    goto menu
)
echo Instalación de Battle.net completada.
pause
goto menu

:ea
echo [EA] Descargando...
powershell -Command "& { (New-Object System.Net.WebClient).DownloadFile('https://origin-a.akamaihd.net/EA-Desktop-Client-Download/installer-releases/EADesktopInstaller.exe', 'EADesktopInstaller.exe') }"
if %errorlevel% neq 0 (
    echo Error durante la descarga de EA.
    pause
    goto menu
)
echo [EA] Instalando...
start /wait EADesktopInstaller.exe /quiet
if %errorlevel% neq 0 (
    echo Error durante la instalacion de EA.
    pause
    goto menu
)
echo Instalación de EA completada.
pause
goto menu

:gog
echo [GOG] Descargando...
powershell -Command "& { (New-Object System.Net.WebClient).DownloadFile('https://webinstallers.gog-statics.com/download/GOG_Galaxy_2.0.exe', 'GOGGalaxyInstaller.exe') }"
if %errorlevel% neq 0 (
    echo Error durante la descarga de GOG.
    pause
    goto menu
)
echo [GOG] Instalando...
start /wait GOGGalaxyInstaller.exe /silent
if %errorlevel% neq 0 (
    echo Error durante la instalacion de GOG.
    pause
    goto menu
)
echo Instalación de GOG completada.
pause
goto menu

:alternativos
cls
echo.
echo           #########################################
echo           #        Launchers Alternativos         #
echo           #########################################
echo.
echo               1) Heroic Games Launcher [Epic Games/GOG/Amazon Prime Games Alt]
echo.
echo               0) Volver al menu principal
echo.
set /p choice="Selecciona una opcion: "

if %choice%==1 goto heroic
if %choice%==0 goto menu
goto alternativos

:heroic
echo [Heroic Games Launcher] Descargando...
powershell -Command "& { (New-Object System.Net.WebClient).DownloadFile('https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.15.2/Heroic-2.15.2-Setup-x64.exe', 'HeroicSetup.exe') }"
if %errorlevel% neq 0 (
    echo Error durante la descarga de Heroic Games Launcher.
    pause
    goto menu
)
echo [Heroic Games Launcher] Instalando...
start HeroicSetup.exe
if %errorlevel% neq 0 (
    echo Error durante la instalacion de Heroic Games Launcher.
    pause
    goto menu
)
echo Instalación de Heroic Games Launcher completada.
pause
goto menu
