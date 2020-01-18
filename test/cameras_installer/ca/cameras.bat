@echo on
echo 1111111111111111111111111111
echo 11 made by 11111111111111111
echo 11          FUNCTION XYZ 111
echo 1111111111111111111111111111
cd C:\Program Files\WindowsApps\Microsoft.MinecraftUWP*\data\definitions\cameras\cameras\ > nul
set fc=%cd%
if errorlevel 0 goto n
echo 'something wrong! are you run it as admin?' && goto end 
:n
cd %~dp0 > nul
set un="../IObit Unlocker/IObitUnlocker.exe"
set ini=%un% /delete %fc\third_person
choice /C uic /M "pls choice uninstall(u),install(i),or cancell(c)"


if errorlevel 1 goto u 
if errorlevel 2 goto i
if errorlevel 3 goto end
:u
%ini%
%un% /copy mc/third_person.json "%fc%\"
goto end
:i
%ini%
%un% /copy fc/third_person.json "%fc%"
echo "%fc%third_person.json"
goto end
:end
pause