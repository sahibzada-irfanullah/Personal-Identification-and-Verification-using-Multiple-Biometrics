function out=fun1
in=double(imread('abc.tif'));
% figure,imshow(in,[])
% c=1;
% alpha=5;
% out=c*(in.^alpha);
% figure,imshow(out,[])

% in=imread('abc.tif');
% out=zeros(256,256);
% tap=0;
% for i=1:256
%     for j=1:256
%         out(j,i)=tap;
%     end
%     tap=tap+1;
% end
% figure,imshow(out,[])
c=1;
out=c*log(1+in);
 %figure,imshow(out,[])
 
 
 c=6;
out1=c*log(1+in);
% figure,imshow(out,[])
 
 figure,imshow(abs(out-out1),[]),pixval;
 dif=sum(sum(abs(out-out1)))
end

