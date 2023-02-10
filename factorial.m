function [ s ] = factorial( a )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

limit=a;
    
disp('factorial is');
p=1;
for i=limit:-1:1
  p=p*i;  
end
s=p;

   
end

