function [ varargout ] = plotf( varargin )
% PLOTF macro for plot, type 'help plot' for more information
figure;
if(nargout == 0)
    plot(varargin{:});
else
    varargout{:} = plot(varargin{:});
end
end