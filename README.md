# lib_mysqludf_http
http get, post, put, and delete

Build mingw version of curl (C:\curl-7.41.0\) (mingw32-make.exe mingw32) ensure libcurl.dll is in system path (user and path env that mysql runs under)

Mingw command line to build DLL (adjust paths to fit your system):

gcc lib_mysqludf_http.c -shared -o C:\xampp\mysql\lib\plugin\lib_mysqludf_http.dll -IC:\xampp\mysql\include -IC:\MinGW\include -IC:\curl-7.41.0\include -LC:\MinGW\lib -LC:\curl-7.41.0\bin -lcurl

After DLL is in plugins, run lib_mysqludf_http.sql

Test with:

SELECT http_get('http://www.google.com');

SELECT http_post('<url>', '<data>');

SELECT http_put('<url>', '<data>');

SELECT http_delete('<url>');
