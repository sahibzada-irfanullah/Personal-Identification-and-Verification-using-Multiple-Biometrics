function minmin
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
 img=imread('fp.tif');

J=img(:,:,1)>160;

imshow(J);

K=bwmorph(~J,'thin','inf');

imshow(~K);


fun=@min;
L = nlfilter(K,[3 3],fun);
% Termination
LTerm=(L==1);
LTermLab=bwlabel(LTerm);
propTerm=regionprops(LTermLab,'Centroid');
CentroidTerm=round(cat(1,propTerm(:).Centroid));

imshow(~K);
hold on
plot(CentroidTerm(:,1),CentroidTerm(:,2),'ro')

% set(handles.termination,'Enable','on');
% set(handles.bifurcation,'Enable','on');

end

