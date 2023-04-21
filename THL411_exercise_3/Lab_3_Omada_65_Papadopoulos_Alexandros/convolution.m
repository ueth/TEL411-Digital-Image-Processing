function [convImage]=convolution(image1, H)
    [x y]=size(H);
    c = idivide(int64(x),int64(2));
    c = double(c);
    c2 = idivide(int64(y),int64(2));
    c2 = double(c2);
    a1 = padarray(image1, [c c2], 0,'both');
    [m n]=size(a1);
    o=0;
    for i=(c+1):(m-c)
        o=o+1;
        u=0;
        for j=(c2+1):(n-c2)
           u=u+1;
           v = a1(i-c:i+c,j-c2:j+c2);
           r = v.*H;
           convImage(o,u) = sum(sum(r));
        end
    end
end