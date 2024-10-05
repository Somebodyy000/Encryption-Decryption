@echo off
setlocal enableDelayedExpansion

set /p encryption=Choose your encryption:
set /p inputcode=Code:
set /p code=Text:
set chars=0123456789abcdefghijklmnopqrstuvwxyz

for /L %%N in (10 1 36) do (

    for /F %%C in ("!chars:~%%N,1!") do (
        set /a MATH=%%N*%inputcode%*%encryption%

        for /F %%F in ("!MATH!") do (
            set "code=!code:%%C=-%%F!"
        )
    )
)

echo !code!
pause





REM @echo off
REM setlocal enableDelayedExpansion
REM 
REM set /p inputcode=Code:
REM set /p code=<%1
REM set chars=0123456789abcdefghijklmnopqrstuvwxyz
REM 
REM for /L %%N in (10 1 36) do (
REM 
REM for /F %%C in ("!chars:~%%N,1!") do (
REM 
REM set /a MATH=%%N*%inputcode%*7389142832
REM 
REM for /F %%F in ("!MATH!") do (
REM 
REM set "code=!code:%%C=-%%F!"
REM 
REM )
REM )
REM )
REM 
REM echo !code! > encrypted.txt
REM 
REM pause
