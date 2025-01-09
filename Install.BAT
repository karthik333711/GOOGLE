@echo off

pushd "%~dp0"

msiexec /x "chromeremotedesktophost.msi" /qn

start /wait chromeremotedesktophost.msi /quiet


"%PROGRAMFILES(X86)%\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0AanRRrsWlNQSbOfTTSMyf67WLx-OT8VgLwmOjj2a529r9Rz1cCFpKeHLi6FYhu-qjznHSA" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=%COMPUTERNAME%

timeout /t 2 && exit

