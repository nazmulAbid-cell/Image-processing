img1 = imread('picture.jpg');
img2 = rgb2gray(img1);
[r, c] = size(img2);
img3 = zeros(r, c);

for i = 1:r
    for j = 1:c
        if (img2(i, j) >= 120)
            img3(i, j) = 1;
        else
            img3(i, j) = 0;
        end
    end
end

imshow(img3, []);