function  bline%(x1,y1,x2,y2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x1=1;
y1=1;
x2=666;
y2=666;
dx=x2-x1;
dy=y2-y1;
di=2*dy-dx;
ds=2*dy;
dt=2*(dy-dx);
 plot(x1,y1,'MarkerEdgeColor','k')
while(x1<x2)
x1=x1+1;
if di<0
di=di+ds;
else
y1=y1+1;
di=di+dt;
end
plot(x1,y1,'MarkerEdgeColor','k')
end
 
end

