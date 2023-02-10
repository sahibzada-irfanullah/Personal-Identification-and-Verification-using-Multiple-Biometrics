function  compare( a,b )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[r1 c1]=size(a);
[r2 c2]=size(b);
mc=0;
nmc=0;
% disp(r1);
% disp(c1);

for i=1:r1
    for j=1:c1
        
     if a(i,j)==b(i,j)
       mc=mc+1;
     else
         nmc=nmc+1;
     end
    end
end
% disp(mc);
res=r1*c1;

% disp(res);
per=(mc/res)*100;
disp(per);disp('% mathced');
end

