function [f] = rwlevy(Z,cur,d,n,a,D)

    k=cumsum(D(cur,:).^(-a));
    r=k(n)*rand;
    f=1;
    while r>k(f)
        f=f+1;
    end
end