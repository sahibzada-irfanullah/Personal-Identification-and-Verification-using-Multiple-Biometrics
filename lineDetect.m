function  lineDetect( st )
%lineDetect detect horzental,vertical and both lines in image
%  lineDetect detect takes just name of string as an input arg 

f=imread(st);
imshow(f);
title('original image');
f=im2bw(f);

figure,imshow(f);
title('binary image');
[g, t] = edge(f, 'sobel','vertical');
figure,imshow(g);
title('vertical edges');
[g, t] = edge(f, 'sobel','horizontal');
figure,imshow(g);
title('horizental edges');
[g, t] = edge(f, 'sobel','both');
figure,imshow(g);
title('HV both edges');
end

