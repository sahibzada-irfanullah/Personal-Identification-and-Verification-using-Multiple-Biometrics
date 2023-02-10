function patterens( a,p1,p2 )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here


[r1 c1]=findsubmat(a,p1);
[r2 c2]=findsubmat(a,p2);
% [e ca]=size(c1);
% [e cb]=size(c2);
ca=length(c1);
cb=length(c2);
ra=length(r1);
rb=length(r2);
for i=1:ca
    disp('first pattern centeral axis');
    disp(r1(i)+1);disp(c1(i)+1);
end
for i=1:cb
  disp('2nd pattern centeral axis');
    disp(r2(i)+1);disp(c2(i)+1);
end
for i=1:ra
    r(i)=r1(i);
end
for i=1:rb
    r(ra+i)=r2(i);
end
for i=1:ca
    c(i)=c1(i);
end
for i=1:cb
    c(ca+i)=c2(i);
end

 disp(r+1);disp(c+1);
rs=0;
cs=0;
for i=1:(length(r)-1)
    for j=i+1:length(r)
        if r(i)>r(j)
            rs=r(i);
            cs=c(i);
            r(i)=r(j);
            c(i)=c(j);
            r(j)=rs;
            c(j)=cs;
        end
    end
end
disp(r+1);disp(c+1);


end

