function [output]=Compute_Median(image, x, y)
    padx = x-2;
    pady = y-2;
    a1 = padarray(image, [padx pady], 'symmetric','both');
    [m n]=size(a1);
    for i=(padx+1):(m-padx)
        for j=(pady+1):(n-pady)
           v = a1(i-padx:i+padx,j-pady:j+pady);
           r = max((v(:)'));
           output(i-padx,j-pady) = uint8(ceil(r));
        end
    end
end