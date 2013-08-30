@setlocal
@echo off

set _PYTHON=python
%_PYTHON% --version >nul 2>nul
if %ERRORLEVEL% equ 0 (
set PYTHON=%_PYTHON%
)

set _PYTHON=python2.5
%_PYTHON% --version >nul 2>nul
if %ERRORLEVEL% equ 0 (
set PYTHON=%_PYTHON%
)

set _PYTHON=python2.6
%_PYTHON% --version >nul 2>nul
if %ERRORLEVEL% equ 0 (
set PYTHON=%_PYTHON%
)

set _PYTHON=python2.7
%_PYTHON% --version >nul 2>nul
if %ERRORLEVEL% equ 0 (
set PYTHON=%_PYTHON%
)

%PYTHON% %~dp0\rfZenHanCmd.py %*
@endlocal
