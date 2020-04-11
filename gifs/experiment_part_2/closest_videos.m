function c = closest_videos(pd,gt)
    
    c = zeros(1,52);

    for i = 1:length(pd)
        min_dist = 999999;
        idx = -1;
        
        
        for j = 1:length(gt)
           
           
           dist = norm(pd(:,i)-gt(:,j));

           
           if dist < min_dist
               min_dist = dist;
               idx = j;
           end
        end
        c(i) = idx;
        
    end
end