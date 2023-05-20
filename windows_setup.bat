mkdir openssl & cd openssl

curl https://www.openssl.org/source/openssl-3.1.0.tar.gz > openssl.tar.gz

tar -xvzf openssl.tar.gz

del openssl.tar.gz

xcopy openssl-3.1.0\* %cd% /E /I
rd /S /Q openssl-3.1.0