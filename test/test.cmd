@echo off
setlocal ENABLEDELAYEDEXPANSION

:: We assume that a successful compile of each file is sufficient

for %%F in (*.coffee) do (
    echo %%F
    call ..\coffee "%%F" > nul
    if !ERRORLEVEL! neq 0 echo *** %%F FAILED *** & exit /b
)
echo *** PASSED ***

