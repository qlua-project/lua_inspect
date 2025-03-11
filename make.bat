@echo off
if /I NOT "%1" == "/ENV" setlocal

set PATH=%~dp0\externals\teal;%PATH%

if /I "%1" == "/ENV" goto EOF

set INSTALL_DIR=%~dp0

pushd "%~dp0\src"


tl --gen-target 5.4 --gen-compat off gen inspect.tl -o ..\bin\inspect.lua
copy /V /Y spec\unindent.lua ..\bin\


popd
endlocal

:EOF
