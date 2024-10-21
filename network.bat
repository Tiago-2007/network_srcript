REM Progremador...........: Tiago Machado
REM Data..................: 8/10/2024
REM Observações...........: Implemetação de um menu.
@echo off
:MENU
cls
echo ##############################################################
echo # (c) . 2024. Tiago Machado
echo ##############################################################

echo 1- Ip configurations
echo 2- Renew IP configurations
echo 3- DNS_QUERY
echo 4- Getmac
echo 5- Powercfg
echo 6- Assoc
echo 7- Chkdsk
echo 8- Net User
echo 9- Exit

set /p opt=Select an option then press ENTER: 

if %opt% == 1 goto IP_CONFIGURATIONS
if %opt% == 2 goto RENEW_IP_CONFIGURATIONS
if %opt% == 3 goto DNS_QUERY
if %opt% == 4 goto GETMAC
if %opt% == 5 goto POWERCFG /ENERGY
if %opt% == 6 goto ASSOC > OUTPUT.TXT
if %opt% == 7 goto CHKDSK C: /F /R
if %opt% == 8 goto NET USER
if %opt% == 10 goto EXIT_SCRIPT


goto MENU

:IP_CONFIGURATIONS
ipconfig /all
pause
goto MENU

:RENEW_IP_CONFIGURATIONS
ipconfig /release
pause 
ipconfig /renew
goto MENU

:DNS_QUERY
set /p domain="Insert domain: "
set /p dnsserver="Insert dnsserver: "
nslookup %domain% %dnsserver%
pause
goto MENU

:GETMAC
getmac
pause
goto MENU

:POWERCFG /ENERGY
POWERCFG /ENERGY
pause
goto MENU


:ASSOC > C: /F /R
assoc > output.txt
pause
goto MENU

:CHKDSK C: /F /R
chkdsk c: /f /r
pause
goto MENU


:NET USER 
net user
pause
goto MENU


:EXIT_SCRIPT
echo Thanks!
exit /b 0