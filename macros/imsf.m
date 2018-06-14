function [ varargout ] = imsf( varargin )
% ISCF macro for imagesc with figure
% type 'help imagesc' for more information
figure;
if(nargout == 0)
    imshow(varargin{:});
else
    varargout{:} = imshow(varargin{:});
end
end

