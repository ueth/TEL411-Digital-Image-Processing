clear all
close all

image = imread('retriever.tiff');
[rows, columns] = size(image);

%1/2 rows, 1/4 columns
shrinkNoAntialiasing = imresize(image, [rows/2, columns/4], 'nearest'); %shrinking image without antialiasing (antialiasing false)
shrinkAntialiasing = imresize(image, [rows/2, columns/4], 'bicubic'); %shrinking image with antialiasing (antialiasing true)

upscaleNearestNoAntialiasing1 = imresize(shrinkNoAntialiasing, [rows, columns], 'nearest');
upscaleBicubicNoAntialiasing1 = imresize(shrinkNoAntialiasing, [rows, columns], 'bicubic');
upscaleBilinearNoAntialiasing1 = imresize(shrinkNoAntialiasing, [rows, columns], 'bilinear');

upscaleNearestAntialiasing1 = imresize(shrinkAntialiasing, [rows, columns], 'nearest');
upscaleBicubicAntialiasing1 = imresize(shrinkAntialiasing, [rows, columns], 'bicubic');
upscaleBilinearAntialiasing1 = imresize(shrinkAntialiasing, [rows, columns], 'bilinear');

MSEnoAntialiasingNearest = mse(image, upscaleNearestNoAntialiasing1)
MSEnoAntialiasingBicubic = mse(image, upscaleBicubicNoAntialiasing1)
MSEnoAntialiasingBilinear = mse(image, upscaleBilinearNoAntialiasing1)
MSEAntialiasingNearest = mse(image, upscaleNearestAntialiasing1)
MSEAntialiasingBicubic = mse(image, upscaleBicubicAntialiasing1)
MSEAntialiasingBilinear = mse(image, upscaleBilinearAntialiasing1)

PSNRnoAntialiasingNearest = psnr(image, upscaleNearestNoAntialiasing1)
PSNRnoAntialiasingBicubic = psnr(image, upscaleBicubicNoAntialiasing1)
PSNRnoAntialiasingBilinear = psnr(image, upscaleBilinearNoAntialiasing1)
PSNRAntialiasingNearest = psnr(image, upscaleNearestAntialiasing1)
PSNRAntialiasingBicubic = psnr(image, upscaleBicubicAntialiasing1)
PSNRAntialiasingBilinear = psnr(image, upscaleBilinearAntialiasing1)

figure, imshow(upscaleNearestNoAntialiasing1), title('Upsample No Antialiasing Nearest (1/2, 1/4)');
figure, imshow(upscaleBicubicNoAntialiasing1), title('Upsample No Antialiasing Bicubic (1/2, 1/4)');
figure, imshow(upscaleBilinearNoAntialiasing1), title('Upsample No Antialiasing Bilinear (1/2, 1/4)');

figure, imshow(upscaleNearestAntialiasing1), title('Upsample With Antialiasing Nearest (1/2, 1/4)');
figure, imshow(upscaleBicubicAntialiasing1), title('Upsample With Antialiasing Bicubic (1/2, 1/4)');
figure, imshow(upscaleBilinearAntialiasing1), title('Upsample With Antialiasing Bilinear (1/2, 1/4)');

%1/4 rows, 1/2 columns
shrinkNoAntialiasing = imresize(image, [rows/4, columns/2], 'nearest'); %shrinking image without antialiasing (antialiasing false)
shrinkAntialiasing = imresize(image, [rows/4, columns/2], 'bicubic'); %shrinking image with antialiasing (antialiasing true)

upscaleNearestNoAntialiasing1 = imresize(shrinkNoAntialiasing, [rows, columns], 'nearest');
upscaleBicubicNoAntialiasing1 = imresize(shrinkNoAntialiasing, [rows, columns], 'bicubic');
upscaleBilinearNoAntialiasing1 = imresize(shrinkNoAntialiasing, [rows, columns], 'bilinear');

upscaleNearestAntialiasing1 = imresize(shrinkAntialiasing, [rows, columns], 'nearest');
upscaleBicubicAntialiasing1 = imresize(shrinkAntialiasing, [rows, columns], 'bicubic');
upscaleBilinearAntialiasing1 = imresize(shrinkAntialiasing, [rows, columns], 'bilinear');

MSEnoAntialiasingNearest2 = mse(image, upscaleNearestNoAntialiasing1)
MSEnoAntialiasingBicubic2 = mse(image, upscaleBicubicNoAntialiasing1)
MSEnoAntialiasingBilinear2 = mse(image, upscaleBilinearNoAntialiasing1)
MSEAntialiasingNearest2 = mse(image, upscaleNearestAntialiasing1)
MSEAntialiasingBicubic2 = mse(image, upscaleBicubicAntialiasing1)
MSEAntialiasingBilinear2 = mse(image, upscaleBilinearAntialiasing1)

PSNRnoAntialiasingNearest2 = psnr(image, upscaleNearestNoAntialiasing1)
PSNRnoAntialiasingBicubic2 = psnr(image, upscaleBicubicNoAntialiasing1)
PSNRnoAntialiasingBilinear2 = psnr(image, upscaleBilinearNoAntialiasing1)
PSNRAntialiasingNearest2 = psnr(image, upscaleNearestAntialiasing1)
PSNRAntialiasingBicubic2 = psnr(image, upscaleBicubicAntialiasing1)
PSNRAntialiasingBilinear2 = psnr(image, upscaleBilinearAntialiasing1)

figure, imshow(upscaleNearestNoAntialiasing1), title('Upsample No Antialiasing Nearest (1/4, 1/2)');
figure, imshow(upscaleBicubicNoAntialiasing1), title('Upsample No Antialiasing Bicubic (1/4, 1/2)');
figure, imshow(upscaleBilinearNoAntialiasing1), title('Upsample No Antialiasing Bilinear (1/4, 1/2)');

figure, imshow(upscaleNearestAntialiasing1), title('Upsample With Antialiasing Nearest (1/4, 1/2)');
figure, imshow(upscaleBicubicAntialiasing1), title('Upsample With Antialiasing Bicubic (1/4, 1/2)');
figure, imshow(upscaleBilinearAntialiasing1), title('Upsample With Antialiasing Bilinear (1/4, 1/2)');

%1/8 rows, 1/8 columns
shrinkNoAntialiasing = imresize(image, [rows/8, columns/8], 'nearest'); %shrinking image without antialiasing (antialiasing false)
shrinkAntialiasing = imresize(image, [rows/8, columns/8], 'bicubic'); %shrinking image with antialiasing (antialiasing true)

upscaleNearestNoAntialiasing1 = imresize(shrinkNoAntialiasing, [rows, columns], 'nearest');
upscaleBicubicNoAntialiasing1 = imresize(shrinkNoAntialiasing, [rows, columns], 'bicubic');
upscaleBilinearNoAntialiasing1 = imresize(shrinkNoAntialiasing, [rows, columns], 'bilinear');

upscaleNearestAntialiasing1 = imresize(shrinkAntialiasing, [rows, columns], 'nearest');
upscaleBicubicAntialiasing1 = imresize(shrinkAntialiasing, [rows, columns], 'bicubic');
upscaleBilinearAntialiasing1 = imresize(shrinkAntialiasing, [rows, columns], 'bilinear');

MSEnoAntialiasingNearest3 = mse(image, upscaleNearestNoAntialiasing1)
MSEnoAntialiasingBicubic3 = mse(image, upscaleBicubicNoAntialiasing1)
MSEnoAntialiasingBilinear3 = mse(image, upscaleBilinearNoAntialiasing1)
MSEAntialiasingNearest3 = mse(image, upscaleNearestAntialiasing1)
MSEAntialiasingBicubic3 = mse(image, upscaleBicubicAntialiasing1)
MSEAntialiasingBilinear3 = mse(image, upscaleBilinearAntialiasing1)

PSNRnoAntialiasingNearest3 = psnr(image, upscaleNearestNoAntialiasing1)
PSNRnoAntialiasingBicubic3 = psnr(image, upscaleBicubicNoAntialiasing1)
PSNRnoAntialiasingBilinear3 = psnr(image, upscaleBilinearNoAntialiasing1)
PSNRAntialiasingNearest3 = psnr(image, upscaleNearestAntialiasing1)
PSNRAntialiasingBicubic3 = psnr(image, upscaleBicubicAntialiasing1)
PSNRAntialiasingBilinear3 = psnr(image, upscaleBilinearAntialiasing1)

figure, imshow(upscaleNearestNoAntialiasing1), title('Upsample No Antialiasing Nearest (1/8, 1/8)');
figure, imshow(upscaleBicubicNoAntialiasing1), title('Upsample No Antialiasing Bicubic (1/8, 1/8)');
figure, imshow(upscaleBilinearNoAntialiasing1), title('Upsample No Antialiasing Bilinear (1/8, 1/8)');

figure, imshow(upscaleNearestAntialiasing1), title('Upsample With Antialiasing Nearest (1/8, 1/8)');
figure, imshow(upscaleBicubicAntialiasing1), title('Upsample With Antialiasing Bicubic (1/8, 1/8)');
figure, imshow(upscaleBilinearAntialiasing1), title('Upsample With Antialiasing Bilinear (1/8, 1/8)');



