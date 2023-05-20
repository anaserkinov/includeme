 rd /S /Q curl
  
 mkdir curl & cd curl
 
 curl https://curl.se/download/curl-8.1.0.tar.gz > curl.tar.gz
 tar -xvzf curl.tar.gz
 del curl.tar.gz
 
 xcopy curl-8.1.0\* %cd% /E /I
 rd /S /Q curl-8.1.0