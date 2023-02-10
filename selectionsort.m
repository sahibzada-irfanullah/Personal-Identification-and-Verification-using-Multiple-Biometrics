function [retnic,retmatch]= selectionsort( nic,match)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
w=0;
y=0;
for i=1:(length(match)-1)
    for j=i+1:length(match)
        if match(i)<match(j)
            w=match(i);
            y=nic(i);
            match(i)=match(j);
            nic(i)=nic(j);
            match(j)=w;
            nic(j)=y;
        end
end
retnic=nic;
retmatch=match;
end

