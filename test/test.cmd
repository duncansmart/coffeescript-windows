@echo off
setlocal ENABLEDELAYEDEXPANSION

:: We assume that a successful compile of each file is sufficient
set TEMP_RESULT_JS=%TEMP%\coffeescript-windows-%RANDOM%.js

set "FAILED= "
for %%F in (*.coffee) do (
    echo %%F
    call ..\coffee "%%F" "%TEMP_RESULT_JS%"
    if !ERRORLEVEL! neq 0 echo *** %%F FAILED *** & set FAILED=!FAILED! %%F
)
echo *** PASSED ***
if not "%FAILED%"==" " echo *** FAILED: !FAILED! ***

del "%TEMP_RESULT_JS%"