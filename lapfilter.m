function countfunc= mcount(initvalue)
%develped by irfanullah
%   Detailed explanation goes here
currentcount=initvalue;
countfunc=@getcount;
    function count=getcount
        currentcount=currentcount+1;
        count=currentcount;
        
    end


end

