I=imread('pout.tif'); %read original graph
I=im2double(I);
%for contrast largen graph
I1=2*I-55/255;
subplot(4,4,1);
imshow(I1);
subplot(4,4,2);
imhist(I1);
subplot(4,4,3);
imshow(histeq(I1));
subplot(4,4,4);
imhist(histeq(I1));
%for contrast decrease graph
I2=0.5*I+55/255;
subplot(4,4,5);
imshow(I2);
subplot(4,4,6);
imhist(I2);
subplot(4,4,7);
imshow(histeq(I2));
subplot(4,4,8);
imhist(histeq(I2));
%for line increase luminance graph 
I3=I+55/255;
subplot(4,4,9);
imshow(I3);
subplot(4,4,10);
imhist(I3)
subplot(4,4,11);
imshow(histeq(I3));
subplot(4,4,12);
imhist(histeq(I3));