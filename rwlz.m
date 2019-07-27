%Laze with probability a
function [f] = rwlz(Z,cur,d,n,a)
    count=0;
    if rand<a
        f=cur; return;
    end
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