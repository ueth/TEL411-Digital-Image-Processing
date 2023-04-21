function [output]=Compute_Mean(image, x, y)
    padx = x-2;%padding must be -2 from the kernel size
    pady = y-2;
    a1 = padarray(image, [padx pady], 0, 'both');%applying padding
    [m n]=size(a1);
    for i=(padx+1):(m-padx)
        for j=(pady+1):(n-pady)
           v = a1(i-padx:i+padx,j-pady:j+pady);%kernel
           r = (sum(v(:)))/(x*y);
           output(i-padx,j-pady) = uint8(ceil(r));
        end
    end
end