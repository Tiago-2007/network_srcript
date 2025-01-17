REM Progremador...........: Tiago Machado
REM Data..................: 8/10/2024
REM Observações...........: Implemetação de um menu.
@echo off
:MENU
cls
echo ##############################################################
echo # (c) . 2024. Tiago Machado
echo ##############################################################

echo 1 - Ip configurations
echo 2 - Renew IP configurations
echo 3 - DNS_QUERY
echo 4 - Show MAC address 
echo 5 - Energy efficent
echo 6 - File/Aplication Association
echo 7 - Disc Repair
echo 8 - User to File
echo 9 - Ping To File
echo 10 - Exit

set /p opt=Select an option then press ENTER: 

if %opt% == 1 goto IP_CONFIGURATIONS
if %opt% == 2 goto RENEW_IP_CONFIGURATIONS
if %opt% == 3 goto DNS_QUERY
if %opt% == 4 goto SHOW_MAC_ADDRESS
if %opt% == 5 goto ENERGY_EFFICIENT
if %opt% == 6 goto FILE_APP_ASSOC
if %opt% == 7 goto DISC_REPAIR
if %opt% == 8 goto USERS_TO_FILE
if %opt% == 9 goto PING_TO_URL
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

:SHOW_MAC_ADDRESS
getmac
pause
goto MENU

:ENERGY_EFFICIENT
Powercfg /enery
pause
goto MENU

:FILE_APP_ASSOC
assoc > output.txt
pause
goto MENU

:DISC_REPAIR
chkdsk /f /r
pause
goto MENU

:USERS_TO_FILE
net user
pause
goto MENU

:PING_TO_URL
set /p url ="Insert URL: "
curl qrenco.de./%ur1%
pause
goto MENU

:EXIT_SCRIPT
echo Thanks!
exit /b 0