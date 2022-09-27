function prob = probAnalitica(p,k,n)
    prob = nchoosek(n, k)*p^k*(1-p)^(n-k);
end