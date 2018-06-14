function [ imf ] = avflt( im, nr )
if(nargin < 2)
    nr = 3;
end
imf = imfilter(im,fspecial('average', nr));
end

