function perData2
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

conn = database.ODBCConnection('dbtoolbox','','');
sqlquery = 'select Address,Email,Contact  from myTable'; 
 curs = exec(conn,sqlquery);
curs = fetch(curs);
curs.Data
close(curs)
close(conn)
clear all;
end

