
%% SEG
coeff_seg = zeros(2,length(seg_gt));
for i = 1:length(seg_gt)
    idx = find(seg_pd(1,:) == seg_gt(1,i));
    if idx > 0 & idx < 51
        coeff_seg(1,i) = vector_agreement(seg_pd(3:end-1,idx), seg_gt(3:end-1,i));
        coeff_seg(2,i) = bhattacharyya(seg_pd(3:end-1,idx), seg_gt(3:end-1,i));
    end
end

mu_seg = mean(coeff_seg);
med_seg = median(coeff_seg);
sd_seg = std(coeff_seg);

%% RGB
coeff_rgb = zeros(3,length(rgb_gt));
for i = 1:length(rgb_gt)
    idx = find(rgb_pd(1,:) == rgb_gt(1,i));
    pd = rgb_pd(2:end,idx)';
    gt = rgb_gt(2:end,i)';
    exp = (sum(pd)*gt/sum(gt));
    
    
    coeff_rgb(1,i) = vector_agreement(rgb_pd(3:end,idx), rgb_gt(3:end,i));
    coeff_rgb(2,i) = bhattacharyya(rgb_pd(3:end,idx), rgb_gt(3:end,i));
    
    if find(exp==0) >= 1
        p = chigof(pd,exp,length(pd));
        coeff_rgb(3,i) = p;
    end
  
end

mu_rgb = mean(coeff_rgb);
med_rgb = median(coeff_rgb);
sd_rgb = std(coeff_rgb);