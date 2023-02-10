function mainFunction
clc;
dbpath = 'E:\Education\MATLAB\myRecord.mdb';
conurl = ['jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)}; DBQ=' dbpath];
con = database('','','','sun.jdbc.odbc.JdbcOdbcDriver', conurl);

%ImageName = strcat(pathFinPrint, name);  % set image path
% curs = exec(con,['select NIC,Finger_Print from myTable where NIC = ' '''2''']);
curs = exec(con,'select NIC,Finger_Print from myTable');
curs = fetch(curs);

retData=curs.Data;
[r c]=size(curs.Data);

 for i=1:r
 match(i)=picPatMach('E:\Education\MATLAB\fingerPrint\4.tif',char(retData(i,2))); 
nic(i)=char(retData(i,1));
  
% retData(i,1)
% retData(i,2)
% imgPath(i)=retData(i,2) ;



% picPatMach(char(imgPath(i)));
 end
[nic match]=selectionsort(nic,match);
nic
match
%retData(2)
%[r c]=size(curs.Data);
if match(1)>60
curs = exec(con,['select * from myTable where NIC = ' '''' nic(1) '''']);
curs = fetch(curs);

retData=curs.Data  
retData(7)
else
    disp('no match found');
end
