function [ varargout ] = surff( varargin )
% SURFNF macro for surf with figure
% type 'help surf' for more information
figure;
if(nargout == 0)
    surf(varargin{:});
else
    varargout{:} = surf(varargin{:});
end
end

