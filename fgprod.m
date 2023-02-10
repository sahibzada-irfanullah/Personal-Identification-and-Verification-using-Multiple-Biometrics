function [ pmax,pmin,fg,pn,fd,gd,ff,gg] = fgprod( f,g )
%FGPROD 2 images find product then max,min values and normalized the image
%  the function take 2 image the multiply it,fine max value,min value and
%  the normalized pic
fd=double(f);
gd=double(g);
fg=fd.*gd;
ff=fd.*fd;
gg=gd.*gd;
pn=mat2gray(fg);
pmax=max(fg(:));
pmin=min(fg(:));

end

