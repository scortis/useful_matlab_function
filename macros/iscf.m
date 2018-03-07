function [ varargout ] = iscf( varargin )
% ISCF macro for imagesc with figure
% type 'help imagesc' for more information
figure;
if(nargout == 0)
    imagesc(varargin{:});
else
    varargout{:} = imagesc(varargin{:});
end
end

