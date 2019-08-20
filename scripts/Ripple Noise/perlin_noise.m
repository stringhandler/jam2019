function [output_image]=perlin_noise(output_image_width,output_image_height,n_scales,gaussian_kernel)

%Generate level sizes
scale_size(1,:)=[output_image_width,output_image_height];
for scale_level=2:n_scales
    scale_size(scale_level,:)=round(scale_size(scale_level-1,:)/2);
end
%Generate accumilated noise
output_image=zeros(scale_size(n_scales,2),scale_size(n_scales,1));
for scale_level=n_scales:-1:1
    level_image=(2.0*rand(scale_size(scale_level,2),scale_size(scale_level,1)))-1.0;
    level_image=imfilter(level_image,gaussian_kernel,'circular','same');
    output_image=output_image+level_image;
    
    if scale_level>1
        output_image=image_double_size(output_image);
    end
end
min_value=min(output_image(:));
max_value=max(output_image(:));
output_image=(output_image-min_value)/(max_value-min_value);

