function  pointDetect( st )
%pointDetect detect points in image 
%   pointDetect takes just name of image as an input args

f=imread(st);
%imshow(f);
%f=im2bw(f);

imshow(f);
title('original image');
w=[-1 -1 -1;-1 8 -1;-1 -1 -1];
g=abs(imfilter(f,w));
t=max(g(:));
g=g>=t;

figure,imshow(g);
title('points');
g=im2bw(g);
figure,imshow(g);
title('points =bw image');
end

