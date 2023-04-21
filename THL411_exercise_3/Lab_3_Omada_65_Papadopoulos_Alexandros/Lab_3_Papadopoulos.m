clear all;
close all;

%1
image1 = imread('lena_gray_512.tif');
imshow(image1), title('Original Image');
im2d = im2double(image1);
H = fspecial('gaussian',[15 15], 20);

tic
image1convolution = convolution(im2d, H);
toc

figure, imshow(image1convolution), title('convolution func');
convolutionImageMSE = mse(im2d,image1convolution)
convolutionImagePSNR = psnr(im2d,image1convolution)

%2
tic
im2 = conv2(im2d, H, 'same');
toc

figure, imshow(im2), title('con2 func');
conv2ImageMSE = mse(im2,image1convolution)

%3
tic
im3 = imfilter(im2d, H);
toc

figure, imshow(im3), title('imfilter func');
imFilterImageMSE = mse(im3,image1convolution)

%4
tic
[A, B] = size(im2d);
[C, D] = size(H);

P = A+C-1;
Q = B+D-1;

padx = double(idivide(int64((P-C)), int64(1)));
pady = double(idivide(int64((Q-D)), int64(1)));
padimagex = double(idivide(int64((P-A)), int64(1)));
padimagey = double(idivide(int64((Q-B)), int64(1)));

Hpadded = padarray(H, [padx pady], 0,'pre');
imagePadded = padarray(im2d, [padimagex padimagey], 0,'pre');

imfft = fft2(imagePadded);
Hfft = fft2(Hpadded);

re=imfft.*Hfft;

finres = ifft2(re);
toc
figure, imshow(finres), title('fft func');
fft2ImageMSE = mse(image1convolution,finres)
