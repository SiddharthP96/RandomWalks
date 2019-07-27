 %intermittent RW| Hop 3 steps with probability a
 function [f] = rwin(Z,cur,d,n,L,a,D)
    if rand>a
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
    else
        count=0;
        ch=D(cur,:); ch=(ch==L);
        c=randi(sum(ch));
        for ii=1:n
            if ch(ii)==1 
                count=count+1;
                if count==c
                    f=ii; return;               
                end
            end
        end
    end
end