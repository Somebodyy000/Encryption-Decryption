@echo off
setlocal enableDelayedExpansion

set /p encryption=The chosen encryption:
set /p inputcode=Code:
set /p code=Text:
set chars=0123456789abcdefghijklmnopqrstuvwxyz

for /L %%N in (10 1 36) do (

    for /F %%C in ("!chars:~%%N,1!") do (
        set /a MATH=%%N*%inputcode%*%encryption%

        for /F %%F in ("!MATH!") do (
            set "code=!code:%%F=%%C!"
        )
    )
)

for /F %%F in ("!code!") do (

    set "code=!code:-=!"

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
REM set "code=!code:%%F=%%C!"
REM 
REM )
REM )
REM )
REM 
REM for /f %%F in ("!code!") do (
REM 
REM set "code=!code:-=!"
REM 
REM )
REM 
REM echo !code! > decrypted.txt
REM 
REM pause
