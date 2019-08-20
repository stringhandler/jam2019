function [output_image]=image_double_size(input_image)

[input_image_height,input_image_width,input_image_channels]=size(input_image);
output_image_height=input_image_height*2;
output_image_width=input_image_width*2;

temp_image=zeros(input_image_height,output_image_width,1);
for x=1:input_image_width
    dx=(x-1)*2+1;
    xm=mod(x,input_image_width)+1;
    for y=1:input_image_height
        temp_image(y,dx)=input_image(y,x);
        temp_image(y,dx+1)=(input_image(y,x)+input_image(y,xm))/2.0;
    end
end

output_image=zeros(output_image_height,output_image_width,1);
for y=1:input_image_height
    dy=(y-1)*2+1;
    ym=mod(y,input_image_height)+1;
    for x=1:output_image_width
        output_image(dy,x)=temp_image(y,x);
        output_image(dy+1,x)=(temp_image(y,x)+temp_image(ym,x))/2.0;
    end
end

