function  picPatMach11
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

clc;

J1=imresize(imread('1.tif'),[200 200]);
J2=imresize(imread('1.tif'),[200 200]);
imshow(J1);
figure,imshow(J2);
% imshow(J)
J1=J1(:,:,1)>160;
K1=J1;
J2=J2(:,:,1)>160;
K2=J2;
% imshow(K)
K1=bwmorph(~J1,'thin','inf');
K2=bwmorph(~J2,'thin','inf');
%  imshow(K)
K1=~K1;
K2=~K2;


a=[1 1 1;1 1 0;1 0 1];
[r1 c1]=findsubmat(K1,a);
[r2 c2]=findsubmat(K2,a);
imshow(K1)
hold on
 plot(r1,c1,'og','LineWidth',1,'MarkerSize',4,'MarkerEdgeColor','blue')
% figure,imshow(K2)
hold on
 plot(r2,c2,'og','LineWidth',1,'MarkerSize',4,'MarkerEdgeColor','blue')
% % match=0;
% % dist1=0;
% % dist2=0;

if length(r1)<length(r2) 
    r=length(r1);
else 
    r=length(r2) ;
end
% % for i=1:length(r)
% %     if r1(i)==r2(i) & c1(i)==c2(i)
% %         match=match+1;
% %     end
% % end

% if numel(dist1)<numel(dist2)
%     d=numel(dist1);
% else 
%     d=numel(dist2);
% end
% for i=1:d
%     if dist1(i)== dist2(i)
%         match=match+1;
%     end
% end
%    per=(match/(d))*100;
% disp(per);disp('% mathced');


% % % % disp('length') 
% % % % disp(r)
% % for i=1:r-1
% %  dist1(i)=totPixels(c1(i),c1(i+1),r1(i),r1(i+1));  
% % 
% % end
% % for i=1:r-1
% %  dist2(i)=totPixels(c2(i),c2(i+1),r2(i),r2(i+1));  
% %  
% % end
% % compEdgesNtPixles(dist1,dist2,r-1);
disp('number of on pixels for pic1');
 for i=1:r-1
     np1(i)=0;
     
np1(i)=pline(r1(i),c1(i),r1(i+1),c1(i+1),K1);
i
disp('number of on pixels');
np1(i)


 end
 disp('***********************************************')
 disp('***********************************************')
 disp('number of of pixels for pic2');
  for i=1:r-1
      np2(i)=0;
np2(i)=pline(r2(i),c2(i),r2(i+1),c2(i+1),K2);
i
disp('number of on pixels');
np2(i)

 end
compEdgesNtPixles(np1,np2,r-1);
% % match=0;
% % for i=1:r-1
% % 
% % if np1(i)==np2(i)
% % match=match+1;
% % end
% % end
% %    per=(match/r)*100;
% % disp(per);disp('% mathced');


end
