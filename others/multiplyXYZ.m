function [ varargout ] = multiplyXYZ(M, varargin)
    [sy,sx] = size(varargin{1});
    points = [];
    for k = 1:length(varargin)
        points = [points; reshape(varargin{k},1,[])];
    end
    points = M * points;
    for m = 1:size(points,1)
        varargout{m} = reshape(points(m,:),sy,sx);
    end
end

