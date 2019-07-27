function [f] = rwnt(Z,cur,d,n,p1,p2)

    count=0;
    de=d(cur);
    c=randi(de);
    if de==1
        f=p1;
    end
    if de~=1
        for ii=1:n
            if Z(cur,ii)==1 
                count=count+1;
                if count==c && ii~=p1 && ii~=p2
                    f=ii; return;               
                end
            end
        end  
    end
    if rand>0.5
        f=p1;
    else
        f=p2;
    end
end