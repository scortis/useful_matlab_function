function [ varargout ] = surfn( varargin )
% SURFNF macro for surf with no edge
% type 'help surf' for more information
if(nargout == 0)
    surf(varargin{:},'EdgeColor','none');
else
    varargout{:} = surf(varargin{:},'EdgeColor','none');
end
end

