clear all;
close all;
clc;

n_scales=8;
output_image_width=256;
output_image_height=256;
    
gaussian_kernel=fspecial('gaussian',[25,25],4.0);
noise_image=perlin_noise(output_image_width,output_image_height,n_scales,gaussian_kernel);
figure;
    imshow(imresize(noise_image,2,'nearest'));
    
sobel_kernel=[-1,0,1;
              -2,0,2;
              -1,0,1];
gradient_image(:,:,1)=imfilter(noise_image,sobel_kernel,'circular','same');
gradient_image(:,:,2)=imfilter(noise_image,sobel_kernel','circular','same');
gradient_image(1,1,3)=0;
gradient_image=gradient_image*0.5+0.5;
figure;
    imshow(imresize(gradient_image,2,'nearest'));
    
%Visually check seam
shifted_gradient_image=circshift(gradient_image,[output_image_height/2 output_image_width/2]);
figure;
    imshow(imresize(shifted_gradient_image,2,'nearest')); 

imwrite(gradient_image,'Results/gradient_image.bmp');
    



