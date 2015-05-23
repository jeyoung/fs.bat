@echo off

IF "%3%"=="" GOTO Explicit
GOTO Exit

:Explicit
IF "%2%"=="" GOTO ImplicitDir
FINDSTR /R /S /N %1 %2
GOTO Exit

:ImplicitDir
FINDSTR /R /S /N %1 *.*
GOTO Exit

:Exit
