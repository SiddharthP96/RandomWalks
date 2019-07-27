function [f] = rwnb(Z,cur,d,n,p)

    count=0;
    de=d(cur);
    c=randi(de);
    if de==1
        f=p;
    end
    if de~=1
        for ii=1:n
            if Z(cur,ii)==1 
                count=count+1;
                if count==c && ii~=p
                    f=ii; return;               
                end
            end
        end  
    end
 
end