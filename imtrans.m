function  g=imtrans(f,varargin)
%book page number 73

if strcmp(class(f),'double') and max(f(:)) > 1 & strcmp(vararg{1},'log')
    f=mat2gray(f);
else
    f=double(f);
end

method=varargin{1};
switch method
    case 'neg'
        g=imcomplement(f);
        imshow(g)
        
    case 'log'
        if length(varargin)==1
            c=1;
        elseif length(varargin)==2
            c=2;
        elseif length(varargin)==3
            c=3;
            classin=varargin{2};
        else
            error('incorrrent number of arguments for the log option')
        end
        g=c*(log(1+double(f)));
        figure,imshow(g)
    case 'gamma'
        if length(varargin)<2
            error('not enought inputs for the gamma option')
        end
        gam=varargin{2};
        g=imadjust(f,[],[],gam);
         figure,imshow(g)
    case 'stretch'
        if length(varargin)==1
            m=mean2(f);
            E=4.0;
        elseif length(varargin)==3
            m=varargin{2};
            E=varargin{3};
        else
            error('incorrect no. inputs for stretch options')
        end
        g=1./(1+(m./(f+eps)).^E);
         figure,imshow(g)
    otherwise 
        error('unknow enhancement method')
end

end

