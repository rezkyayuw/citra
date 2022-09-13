%Nama: Rezky Ayu Wulandari
%NIM: 17 523 100

A = zeros(101);
A (47:56,47:56) = 1;

B = fft2(A);
C = ifft2(B);

figure,
subplot(1,3,1), imshow(A), title('a. citra awal'),
subplot(1,3,2), imshow(B), title('b. transformasi fourier fft2'), 
subplot(1,3,3), imshow(C), title('c. inverse fourier ifft2');