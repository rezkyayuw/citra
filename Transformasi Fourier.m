A = zeros(101);
c = [51 51];
l = 30;

step = 6;
size = 2;

for i = 0:step:l
    for j = -(size/2):(size/2)
        for k = -(size/2):(size/2)
            px = c(1) - (l / 2) + i;
            py = c(2) - (l / 2);
            
            A(px + j, py + k) = 1;
            A(px + k, py + j) = 1;

            A(py + j, px + k) = 1;
            A(py + k, px + j) = 1;
            
            A(px + j, py + l + k) = 1;
            A(px + k, py + l + j) = 1;
            
            A(py + l + j, px + k) = 1;
            A(py + l + k, px + j) = 1;
        end
    end
end

imshow(A);

B = fft2(A);
C = ifft2(B);

D = fft(A);
E = ifft(D);

figure, 
subplot(2,2,1), imshow(B), title('fft2'), 
subplot(2,2,2), imshow(C), title('ifft2'),

subplot(2,2,3), imshow(D), title('fft'), 
subplot(2,2,4), imshow(E), title('ifft');