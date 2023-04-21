close all;
clear all;
clc;

image1 = imread('axones1.png');
image2 = imread('axones2.png');

%--------- 1. Image Denoising---------%
se1=strel('square',3);
se2=strel('square',3);

io1 = imopen(image1,se1);
io2 = imopen(image2,se2);

figure, imshowpair(image1,image2,'montage'), title('Original Images');

figure, imshowpair(io1,io2,'montage'), title('Image Denoising');

%--------- 2. Enhancement of linear structures---------%
se1=strel('disk',6);
se2=strel('disk',8);

er1 = imdilate(io1,se1);
er2 = imdilate(io2,se2);

figure, imshowpair(er1,er2,'montage'), title('Enhancement of linear structures');

%--------- 3. Binarize image---------%
gt1 = graythresh(er1);
gt2 = graythresh(er2);

BW1 = imbinarize(er1,gt1);
BW2 = imbinarize(er2,gt2);

figure, imshowpair(BW1,BW2,'montage'), title('Binarize image');

%--------- 4. Skeletalization---------%
BW1 = bwmorph(rgb2gray(double(BW1)),'skel',Inf);
BW2 = bwmorph(rgb2gray(double(BW2)),'skel',Inf);

figure, imshowpair(BW1,BW2,'montage'), title('Skeletalization');

%--------- 5. Connection of the skeleton---------%
se1=strel('square', 2);
se2=strel('square', 2);

BW1 = imdilate(BW1,se1);
BW2 = imdilate(BW2,se2);

BW1 = bwmorph(BW1,'bridge');
BW2 = bwmorph(BW2,'bridge');


figure, imshowpair(BW1,BW2,'montage'), title('Connection of the skeleton');


