function out = myfun%( a )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% % disp('you have entered');
% % a
% % out = @facto;
% % limit=a;
% %     function an = facto
% % disp('factorial is');
% % p=1;
% % for i=limit:-1:1
% %   p=p*i;  
% % end
% % an=p;
% % 
% %     end
button = questdlg('qstring','title')
result=questdlg'Do you really want to delete the record"','delete record'};
switch result
case 'Yes'
disp('yes selected');
case 'No'
disp('no selse');
case 'Cancel'
disp('Op cancelled');
end
end

