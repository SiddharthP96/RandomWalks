function [f] = rw(Z,cur,d,n)
    count=0;
    de=d(cur);
    c=randi(de);
    for ii=1:n
        if Z(cur,ii)==1 
            count=count+1;
            if count==c
                f=ii; return;               
            end
        end
    end   
end