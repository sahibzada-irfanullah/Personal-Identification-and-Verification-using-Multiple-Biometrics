function  [K1]=bin
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

global ImagePath;
global J1;

J1=imread(ImagePath);
J1=imresize(J1,[400 300]);
J1=J1(:,:,1)>160;
K1=J1;
% axes(handles.axesTestImg);
% imshow(K1);
% K1=bwmorph(~J1,'thin','inf');
% axes(handles.axesTestImg);
% K1=~K1;
% imshow(K1);
% a=[1 1 1;1 1 0;1 0 1];
% K1=bwmorph(~J1,'thin','inf');
% K1=~K1;
% [r1 c1]=findsubmat(K1,a);
% imshow(K1)
%  hold on
% plot(r1,c1,'og','LineWidth',1,'MarkerSize',4,'MarkerEdgeColor','blue')



end

