rem @echo off

cd /d %~dp0

net start "embedded database - geminidb01"
DropReplication.exe

C:\DBMaster\5.2\dmsql32.exe /b shutdowndb.sql

rem mkdir JRE
rem xcopy /y /E C:\DBMaster\5.2\JRE JRE

rem copy /y C:\DBMaster\5.2\activation.dat
rem copy /y C:\DBMaster\5.2\dbmaster.lic
rem copy /y C:\DBMaster\5.2\dmconfig.ini

rem rd /s /q C:\DBMaster\5.2
rem mkdir C:\DBMaster\5.2
rem mkdir C:\DBMaster\5.2\JRE

extrac32 /E /Y DBMaster_150324.cab

xcopy /y /E D:\ProgMNG\VUP\bundle C:\DBMaster\5.2
if %ERRORLEVEL% neq 0 (
goto ERROR
)


rem xcopy /y /E JRE C:\DBMaster\5.2\JRE
rem if %ERRORLEVEL% neq 0 (
rem goto ERROR
rem )

rem move /y activation.dat  C:\DBMaster\5.2
rem move /y dbmaster.lic C:\DBMaster\5.2
rem move /y dmconfig.ini C:\DBMaster\5.2

net start "embedded database - geminidb01"

rd /s /q D:\ProgMNG\VUP\bundle
rem rd /s /q JRE

del /F /Q DBMaster_150324.cab
del /F /Q DropReplication.exe
del /F /Q shutdowndb.sql
del /F /Q AddVUP.bat

exit 1

:ERROR
exit 255
