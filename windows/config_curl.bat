IF "%1"=="" (
    echo usage: %0 sourcedir installdir
    exit /b
)

REM Check if mingw-w64 is installed, if not install it
where /q mingw-w64
IF %ERRORLEVEL% NEQ 0 (
    echo mingw-w64 not found, installing...
    choco install mingw-w64 -y
)

REM Check if libc6-dev is installed, if not install it
where /q gcc
IF %ERRORLEVEL% NEQ 0 (
    echo gcc not found, installing...
    choco install gcc -y
)

REM Navigate to the curl directory
cd %1/curl

REM Find the path to openssl
for /f "delims=" %%i in ('where openssl') do set openssl_path=%%i

REM Configure curl
call configure.bat --host=x86_64-w64-mingw32 --with-openssl=%openssl_path% --disable-shared --enable-static --with-zlib=/usr/local/zlib --prefix=%2/curl
