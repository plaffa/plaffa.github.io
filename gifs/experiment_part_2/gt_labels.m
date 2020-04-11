function l = gt_labels(gt)

    l = zeros(1,length(gt));
    
    mu = median(gt(:));
    sigma = std(gt(:));
    thresh = mu + sigma;
    
    for i = 1:length(l)
        j = 1;
        for idx = 1:9
            if gt(idx,i) > thresh
                l(j,i) = idx;
                j = j+1;
            end
        end
    end
end