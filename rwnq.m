function [f] = rwnq(Z,cur,d,n,p1,p2,p3)
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
                if count==c && ii~=p1 && ii~=p2 && ii~=p3
                    f=ii; return;               
                end
            end
        end  
    end
    if Z(p3,cur)==1
        f=p3; return;
    end
    if Z(p2,cur)==1
        f=p2; return; 
    end
    if Z(p1,cur)==1
        f=p1; return;
    end
    
end