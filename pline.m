function [pix]= pline(x1,y1,x2,y2,thumb)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% x1=1;



% y1=67;
% x2=666;
% y2=666;
% J1=imread('1.tif');
% 
% % imshow(J)
% J1=J1(:,:,1)>160;
% K1=J1;
% 
% % imshow(K)
% K1=bwmorph(~J1,'thin','inf');
% 
% % imshow(K)
% K1=~K1;
% 

count=0;

% imshow(thumb)

% hold on
m = round((y2 - y1) / (x2 - x1));
if m <= 1 
dx = 1;
dy =round( m * dx);
else
dy = 1;
dx =round( dy / m);
end
% if K1(x1,y1)==true
%     count=count+1;
% end
%  plot(x1,y1,'og','LineWidth',1,'MarkerSize',1,'MarkerEdgeColor','blue')
%  plot(x1,y1,'MarkerEdgeColor','k')
for k = x1 : x2
x1 = x1 + dx;
y1 = y1 + dy;
% hold on
%  plot(x1,y1,'MarkerEdgeColor','k')
if thumb(x1,y1)==true
    count=count+1;
end

end
% ne=count;
% pn(i)=count;
pix=count;
% pn(i)
 
end

