function [f] = rwbi(Z,cur,d,n,a)
    A=Z(cur,:);
    Ar=A.*d.^a;
    k=cumsum(Ar);
    r=k(n)*rand;
    f=1;
    while r>k(f)
        f=f+1;
    end
end