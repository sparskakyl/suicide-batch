:: Suicide-batch Installation
@ECHO OFF
SET "CDir=%~dp0"

ECHO WARNING: You want to install the suicide batch, this may be dangerous and challenging.
ECHO.
CHOICE /C YN /M "Are you sure"
IF "%errorlevel%"=="2" EXIT /B 0
ECHO.
ECHO Creating reg files ...
ECHO Windows Registry Editor Version 5.00 > %CDir%temp.reg
ECHO. >> %CDir%temp.reg
ECHO [HKEY_CURRENT_USER\Software\Microsoft\Command Processor\AutoRun] >> %CDir%temp.reg
ECHO "AutoRun"=string:"%CDir%suicide.bat" >> %CDir%temp.reg
ECHO Running reg files ...
ECHO If it prompts, click "Yes" button.
START %CDir%temp.reg
ECHO Sucessfully installed, have a neutural day.
PAUSE > NUL
DEL /S /Q %CDir%temp.reg