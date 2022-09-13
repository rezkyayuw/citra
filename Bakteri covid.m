% Nama: Rezky Ayu Wulandari
% NIM: 17523100

A= imread('cov.png');

sudut = [0:360];
XCOVID = 207+7*cos(deg2rad(sudut));
YCOVID = (1024-907)+7*sin(deg2rad(sudut));

figure, subplot(1,2,1), imshow(A), title('COVID-19'), hold on, plot(208,(1024-907),'rx', XCOVID, YCOVID,'r-');

