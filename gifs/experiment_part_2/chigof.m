function p = chigof(observed, expected,df)

    chi2stat = sum((observed-expected).^2 ./ expected);
    p = 1 - chi2cdf(chi2stat,df);
    
    disp(chi2stat)

end