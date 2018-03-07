function [ varargout ] = im( varargin )
% SURFNF macro for surf with no edge with figure
% type 'help surf' for more information
figure;
if(nargout == 0)
    surf(varargin{:},'EdgeColor','none');
else
    varargout{:} = surf(varargin{:},'EdgeColor','none');
end
end

