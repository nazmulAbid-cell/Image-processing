img = imread('picture.jpg');
img = rgb2gray(img);
[r, c] = size(img);
frequency = 1 : 256;
count = 0;
for i = 1 : 256
    for j = 1 : r
        for k = 1 : c
            if img(j, k) == i-1
                    count = count + 1;
            end
        end
        frequency(i) = count;
        count = 0;
    end
    
end 
n = 0 : 255;
stem(n, frequency);