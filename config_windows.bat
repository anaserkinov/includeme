cd windows

set INCLUDE_DIR="..\.."
set BUILD_DIR="..\..\builds\windows"

pushd %CD%
call config_openssl.bat %INCLUDE_DIR% %BUILD_DIR%
popd

pushd %CD%
call config_curl.bat %INCLUDE_DIR% %BUILD_DIR%
popd