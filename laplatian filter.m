

img1 = imread('picture.jpg');
img2 = rgb2gray(img1);
img2 = im2double(img2);
[r, c] = size(img2);

I = zeros(size(img2));
f = [0 1 0; 1 -4 1; 0 1 0];

img3 = padarray(img2,[1 1]);
% figure,imshow(img3)
img3 = double(img3);

for i = 1 : r
    for j = 1 : c
        I(i, j) = sum(sum(f.*img3(i:i+2, j: j+2)));
%         disp(I(i, j));
    end
end
figure, imshow(I);
figure,imshow(img2-I);