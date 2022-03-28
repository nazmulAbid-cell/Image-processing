img1 = imread('picture.jpg');
img2 = rgb2gray(img1);
img2 = im2double(img2);
[r, c] = size(img2);

subplot(2,1,1);
imshow(img1);
title('before');

I = zeros(size(img2));
f = ones(3,3);
f = f/9;

img3 = padarray(img2,[1 1]);
img3 = double(img3);

for i = 1 : r
    for j = 1 : c
        I(i, j) = sum(sum(f.*img3(i:i+2, j:j+2)));
%         disp(I(i, j));
    end
end
subplot(2,1,2);
imshow(I);
title('after');
