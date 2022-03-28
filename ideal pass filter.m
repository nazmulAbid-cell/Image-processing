img1 = imread('picture.jpg');
img2 = rgb2gray(img1);
[r, c] = size(img2);

mask = zeros(r,c);

for i = 239:249
    for j = 306:316
        mask(i,j) = 1;
    end
end

I = fftshift(mask);
I1 = fft2(img2);
I2 = I1.*I;
I3 = real(ifft2(I2));
figure, imshow(uint8(I3))
