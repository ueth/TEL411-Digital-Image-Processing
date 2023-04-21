clear all;
close all;

kernel = input('Choose filter:\n 1->Mean\n 2->Median\n 3->Max\n 4->Min\n');

switch kernel
    case 1
        image = imread('Mean_Image1.jpeg');
        subplot(2,2,1), imshow(image), title('Original Image');
        subplot(2,2,2), imshow(Compute_Mean(rgb2gray(image), 3, 3)), title('Kernel 3x3');
        subplot(2,2,3), imshow(Compute_Mean(rgb2gray(image), 5, 5)), title('Kernel 5x5');
        subplot(2,2,4), imshow(Compute_Mean(rgb2gray(image), 9, 9)), title('Kernel 9x9');
        sgtitle('Mean Image1');
        figure;
        image = imread('Mean_Image2.jpeg');
        subplot(2,2,1), imshow(image), title('Original Image');
        subplot(2,2,2), imshow(Compute_Mean(image, 3, 3)), title('Kernel 3x3');
        subplot(2,2,3), imshow(Compute_Mean(image, 5, 5)), title('Kernel 5x5');
        subplot(2,2,4), imshow(Compute_Mean(image, 9, 9)), title('Kernel 9x9');
        sgtitle('Mean Image2');
    case 2
        image = imread('Median_Image1.png');
        subplot(2,2,1), imshow(image), title('Original Image');
        subplot(2,2,2), imshow(Compute_Median(image, 3, 3)), title('Kernel 3x3');
        subplot(2,2,3), imshow(Compute_Median(image, 5, 7)), title('Kernel 5x7');
        subplot(2,2,4), imshow(Compute_Median(image, 9, 11)), title('Kernel 9x11');
        sgtitle('Median Image1');
        figure;
        image = imread('Median_Image2.png');
        subplot(2,2,1), imshow(image), title('Original Image');
        subplot(2,2,2), imshow(Compute_Median(image, 3, 3)), title('Kernel 3x3');
        subplot(2,2,3), imshow(Compute_Median(image, 5, 7)), title('Kernel 5x7');
        subplot(2,2,4), imshow(Compute_Median(image, 9, 11)), title('Kernel 9x11');
        sgtitle('Median Image2');
    case 3
        image = imread('Min_Max_Image1.jpeg');
        image = rgb2gray(image);
        subplot(2,2,1), imshow(image), title('Original Image');
        subplot(2,2,2), imshow(Compute_Max(image, 3, 5)), title('Kernel 3x5');
        subplot(2,2,3), imshow(Compute_Max(image, 5, 5)), title('Kernel 5x5');
        subplot(2,2,4), imshow(Compute_Max(image, 7, 7)), title('Kernel 7x7');
        sgtitle('Min Max Image1');
        figure;
        image = imread('Min_Max_Image2.jpeg');
        image = rgb2gray(image);
        subplot(2,2,1), imshow(image), title('Original Image');
        subplot(2,2,2), imshow(Compute_Max(image, 3, 5)), title('Kernel 3x5');
        subplot(2,2,3), imshow(Compute_Max(image, 5, 5)), title('Kernel 5x5');
        subplot(2,2,4), imshow(Compute_Max(image, 7, 7)), title('Kernel 7x7');
        sgtitle('Min Max Image2');
    case 4
        image = imread('Min_Max_Image1.jpeg');
        image = rgb2gray(image);
        subplot(2,2,1), imshow(image), title('Original Image');
        subplot(2,2,2), imshow(Compute_Min(image, 3, 5)), title('Kernel 3x5');
        subplot(2,2,3), imshow(Compute_Min(image, 5, 5)), title('Kernel 5x5');
        subplot(2,2,4), imshow(Compute_Min(image, 7, 7)), title('Kernel 7x7');
        sgtitle('Min Max Image1');
        figure;
        image = imread('Min_Max_Image2.jpeg');
        image = rgb2gray(image);
        subplot(2,2,1), imshow(image), title('Original Image');
        subplot(2,2,2), imshow(Compute_Min(image, 3, 5)), title('Kernel 3x5');
        subplot(2,2,3), imshow(Compute_Min(image, 5, 5)), title('Kernel 5x5');
        subplot(2,2,4), imshow(Compute_Min(image, 7, 7)), title('Kernel 7x7');
        sgtitle('Min Max Image2');
end