@echo off


setlocal
set KFDIR=d:\Games\kf
set STEAMDIR=c:\Steam\steamapps\common\KillingFloor
set outputdir=D:\KFOut\ScrnD3Ach


echo Removing previous release files...
del /S /Q %outputdir%\*


echo Compiling project...
call make.cmd
if %ERRORLEVEL% NEQ 0 goto end

echo Exporting .int file...
%KFDIR%\system\ucc dumpint ScrnD3Ach.u

echo.
echo Copying release files...
mkdir %outputdir%\System
mkdir %outputdir%\Textures
mkdir %outputdir%\uz2


copy /y %KFDIR%\system\ScrnD3Ach.* %outputdir%\system\
copy /y %STEAMDIR%\textures\D3Ach_T.utx %outputdir%\Textures\
copy /y *.txt  %outputdir%
copy /y *.ini  %outputdir%


echo Compressing to .uz2...
%KFDIR%\system\ucc compress %KFDIR%\system\ScrnD3Ach.u
%KFDIR%\system\ucc compress %STEAMDIR%\textures\D3Ach_T.utx

move /y %KFDIR%\system\ScrnD3Ach.u.uz2 %outputdir%\uz2
move /y %STEAMDIR%\textures\D3Ach_T.utx.uz2 %outputdir%\uz2

echo Release is ready!

endlocal

pause

:end
