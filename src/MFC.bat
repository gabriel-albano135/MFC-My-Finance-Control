@echo off
title MFC - My Finance Control
cd /d "%~dp0.."

echo Iniciando o MFC...
echo Abra http://localhost:3000 no navegador.
echo Mantenha esta janela aberta enquanto utiliza o sistema.
echo.

node src/server.cjs

pause