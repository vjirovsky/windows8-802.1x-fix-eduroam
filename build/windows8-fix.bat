@echo off
cls
echo ***********************************************
echo *                                             *
echo *                                             *
echo *     Windows 8 fix for 802.1x (Eduroam)      * 
echo *                                             *
echo *                   1.0                       *
echo *                                             *
echo *          Vaclav Jirovsky, 2012              *
echo *                                             *
echo *                                             *
echo ***********************************************
echo.
echo.
echo If you have active UAC, click on Yes in next step for permission for this script.
pause 
sudo.exe reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching /v SearchOrderConfig /t REG_DWORD /d 0 /f > nul

IF ERRORLEVEL 0 IF NOT ERRORLEVEL 1 ( 
  echo.
  echo.
  echo.
  echo Fix of updating drives for Windows 8 should be applied. 
  echo Now install old Wi-Fi driver from Windows 7 and everything should be ok.
  echo.
  echo. 
) ELSE (

echo.
echo.
echo !!!!!!Something FAILED!!!!!!

)
pause