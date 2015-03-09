DROP FUNCTION IF EXISTS http_get;
DROP FUNCTION IF EXISTS http_post;
DROP FUNCTION IF EXISTS http_put;
DROP FUNCTION IF EXISTS http_delete;

create function http_get returns string soname 'lib_mysqludf_http.dll';
create function http_post returns string soname 'lib_mysqludf_http.dll';
create function http_put returns string soname 'lib_mysqludf_http.dll';
create function http_delete returns string soname 'lib_mysqludf_http.dll';
