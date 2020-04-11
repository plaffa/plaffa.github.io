
function B = bhattacharyya(pd,gt)
    
    n = (sum(pd) + sum(gt))/2;
    pd = n.*pd/sum(pd);
    gt = n.*gt/sum(gt);
    
    nom = 0;
    denom = 0;

    for i = 1:length(pd)
       nom = nom + sqrt(pd(i)*gt(i));
       denom = denom + sqrt(gt(i)*gt(i));
    end
    
    B = nom/denom;
end