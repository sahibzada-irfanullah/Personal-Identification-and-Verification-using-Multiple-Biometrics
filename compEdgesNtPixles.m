function [retMatch]=compEdgesNtPixles(np1,np2,r)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
match=0;
for i=1:r

if np1(i)==np2(i)
match=match+1;
end
end
% disp('***********************************************')
%  disp('***********************************************')
%  disp('***********************************************')
%  disp('*************Matched Ration*************')
   per=(match/r)*100;
% disp(per);disp('% mathced');
retMatch=per;

end

