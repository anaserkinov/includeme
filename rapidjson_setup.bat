rd /S /Q rapidjson

git clone https://github.com/Tencent/rapidjson.git rapidjson_git

mkdir rapidjson

xcopy rapidjson_git\include\rapidjson\* %cd%\rapidjson /E /I
rd /S /Q rapidjson_git