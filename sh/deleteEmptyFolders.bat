@echo off
for /f "tokens=*" %%a in ('dir /ad/b/s') do call :tratar "%%a"
goto :eof
:Tratar
rd %1 2>kk.txt
for /f %%k in (kk.txt) do if not "%%k"=="" goto :eof
>> borrdir.txt echo Se ha borrado el directorio %1 el %date% a las %time%
goto :eof