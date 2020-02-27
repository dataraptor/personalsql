@echo off
If not exist "scratch.sql" (
    copy NUL scratch.sql
    attrib +h scratch.sql
)
start scratch.sql

:loop  
timeout -t 1 >nul  
for %%i in (scratch.sql) do echo %%~ai|find "a">nul || goto :loop
rem File_Changed

cls
exit | sqlplus system/ii @scratch.sql

attrib -a +h scratch.sql
goto :loop