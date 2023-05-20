rd /S /Q openssl

:parse_arguments
IF "%~1"=="" goto end_parse_arguments

if "%~1"=="--build_type" (
    set "build_type=%~2"
    shift
) else (
    set "build_type="
    
)

shift
goto parse_arguments

:end_parse_arguments

IF "%build_type%"=="production" (
    mkdir openssl & cd openssl
    
    curl https://www.openssl.org/source/openssl-3.1.0.tar.gz > openssl.tar.gz
    tar -xvzf openssl.tar.gz
    del openssl.tar.gz
    
    xcopy openssl-3.1.0\* %cd%\openssl /E /I
    rd /S /Q openssl-3.1.0
) ELSE (
    git clone https://github.com/openssl/openssl.git openssl
)