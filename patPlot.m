function patPlot%(extImgPath)
extImgPath=imread('1.tif');
J2=imresize(imread(extImgPath),[400 300]);

J2=J2(:,:,1)>160;
K2=J2;
K2=bwmorph(~J2,'thin','inf');
K2=~K2;
a=[1 1 1;1 1 0;1 0 1];
[r2 c2]=findsubmat(K2,a);
axes(handles.axesExistImg);
imshow(K2)
 hold on
plot(r2,c2,'og','LineWidth',1,'MarkerSize',4,'MarkerEdgeColor','blue')

end