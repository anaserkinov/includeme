cd %1\openssl

set CC=x86_64-w64-mingw32-gcc
Configure mingw64 no-shared no-ssl3 no-comp no-engine --prefix=%2\openssl
