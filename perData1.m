function perData1
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
clc;
conn = database.ODBCConnection('dbtoolbox','','');
sqlquery = ['select Name from myTable where NIC = ' '''10'''];
 curs = exec(conn,sqlquery);
curs = fetch(curs);
m=curs.Data;
w=char(m);
c=strsplit(w,',');
c(1)
c(2)
c(3)

sqlquery = ['delete * from myTable where NIC = ' '''' 10 ''''];
exec(conn,sqlquery);
get(conn,'AutoCommit')

close(curs)
close(conn)

clear all;
end

