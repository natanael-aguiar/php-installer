@echo off
chcp 65001 > nul 2>&1
setlocal enabledelayedexpansion

REM Defina as variáveis
set PHP_VERSION=8.2.12
set PHP_ARCH=nts-Win32-vs16-x64
set PHP_URL=https://windows.php.net/downloads/releases/php-%PHP_VERSION%-%PHP_ARCH%.zip
set PHP_INSTALL_DIR=C:\php

REM Verifique se o diretório PHP já existe
if exist "%PHP_INSTALL_DIR%" (
    echo.
    echo PHP já está instalado em %PHP_INSTALL_DIR%
    echo.
    pause
    exit /b 0
)

REM Crie o diretório de instalação
mkdir "%PHP_INSTALL_DIR%"

REM Baixe o arquivo ZIP do PHP usando curl
curl -o php.zip -L %PHP_URL%

REM Descompacte o arquivo ZIP
powershell -Command "Expand-Archive -Path .\php.zip -DestinationPath %PHP_INSTALL_DIR% -Force"

REM Adicione o diretório PHP ao PATH, se ainda não estiver presente
set "PATH_CHECK=!PATH!"
if "!PATH_CHECK:%PHP_INSTALL_DIR%=!"=="!PATH_CHECK!" (
    setx PATH "%PATH%;%PHP_INSTALL_DIR%" /M
)

REM Exclua o arquivo ZIP
del php.zip

REM Exiba uma mensagem informando que a instalação foi concluída
echo.
echo Instalação do PHP %PHP_VERSION% concluída com sucesso!
echo Certifique-se de reiniciar qualquer janela de prompt de comando aberta para que as alterações nas variáveis de ambiente tenham efeito.
echo.

pause
endlocal
