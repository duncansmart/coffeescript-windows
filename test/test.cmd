@echo off
setlocal ENABLEDELAYEDEXPANSION

:: We assume that a successful compile of each file is sufficient
set TEMP_RESULT_JS=%TEMP%\coffeescript-windows-%RANDOM%.js

for %%F in (*.coffee) do (
    echo %%F
    call ..\coffee "%%F" "%TEMP_RESULT_JS%"
    if !ERRORLEVEL! neq 0 echo *** %%F FAILED *** & exit /b
)
echo *** PASSED ***

del "%TEMP_RESULT_JS%"