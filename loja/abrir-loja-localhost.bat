@echo off
rem Serve a pasta desta loja em http://localhost:8000 e abre a loja no navegador padrao.
rem Deixe esta janela aberta durante a demonstracao. Para parar, feche a janela ou aperte Ctrl+C.
cd /d "%~dp0"
set URL=http://localhost:8000/vitrine-loja.html

where py >nul 2>nul
if %errorlevel%==0 (
  echo Loja em %URL%
  start "" "%URL%"
  py -m http.server 8000
  goto :fim
)

where python >nul 2>nul
if %errorlevel%==0 (
  echo Loja em %URL%
  start "" "%URL%"
  python -m http.server 8000
  goto :fim
)

echo.
echo Nao encontrei o Python nesta maquina.
echo Instale o Python em https://www.python.org/downloads/ marcando "Add python.exe to PATH",
echo ou use a extensao Live Server do VS Code para abrir a vitrine-loja.html.
echo.
:fim
pause
