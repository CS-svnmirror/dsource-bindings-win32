dmd -I.. -c testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Windows2000 testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=WindowsXP testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Windows2003 testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=WindowsVista testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Win32_Winsock1 testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=IE7 testall.d
@if errorlevel 1 goto abort
@rem Do we really need to test version=Unicode under all combinations?
dmd -I.. -c -version=Unicode testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Unicode -version=Windows2000 testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Unicode -version=WindowsXP testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Unicode -version=Windows2003 testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Unicode -version=WindowsVista testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Unicode -version=Win32_Winsock1 testall.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Unicode -version=IE7 testall.d
@del testall.obj
@echo.
:abort
