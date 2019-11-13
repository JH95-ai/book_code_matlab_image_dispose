I=imread('pout.tif');%read original graph
I1=imread('coins.png'); %read will mapping histogram graph 
I2=imread('circuit.tif');  %read will mapping histogram graph

%calculate histogram
[hgram1,x]=imhist(I1);
[hgram2,x]=imhist(I2);

%execute histogram equalization
J1=histeq(I,hgram1);
J2=histeq(I,hgram2);

%draw graph
subplot(2,3,1);
imshow(I);title('original graph');
subplot(2,3,2);
imshow(I1);title('standard graph one');
subplot(2,3,3);
imshow(I2);title('standard graph two');
subplot(2,3,5);
imshow(J1);title('provision to one');
subplot(2,3,6);
imshow(J2);title('provision to two');
%draw histogram graph
figure;
subplot(2,3,1);
imhist(I);
subplot(2,3,2);
imhist(I1);
subplot(2,3,3);
imhist(I2);
subplot(2,3,5);
imhist(J1);
subplot(2,3,6);
imhist(J2);
