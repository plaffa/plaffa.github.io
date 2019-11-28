for i = 1:60
    
    [ind, cmap] = imread(sprintf('frame_%.2d_delay-0.12s.png', i-1));
    img{i} = ind2rgb(ind, cmap);
    
    %img{i}(4:end-3,4:end/2-1,:) = histeq(img{i}(4:end-3,4:end/2-1,:));
    if i > 10
        img{i}(4:end-3,4:end/2-1,:) = imnoise(img{i}(4:end-3,4:end/2-1,:), 'gaussian', 0.3);
    end
        
    imwrite(img{i}, sprintf('img_%.2d.png',i-1))
end

black = zeros(size(img{1}));
imwrite(black, 'black.png');


