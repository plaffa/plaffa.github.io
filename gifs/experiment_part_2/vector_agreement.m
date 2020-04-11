function Cs = vector_agreement(pd,gt)
    n = (sum(pd) + sum(gt))/2;
    pd = n.*pd/sum(pd);
    gt = n.*gt/sum(gt);
   
    
    xy   = dot(pd,gt);
    nx   = norm(pd);
    ny   = norm(gt);
    nxny = nx*ny;

    Cs   = xy/nxny;
end