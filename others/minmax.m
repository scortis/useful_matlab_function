function [ B ] = minmax( A, minValue, maxValue )
% MINMAX [ B ] = minmax( A, minValue, maxValue )
% limits A from minValue,maxValue
B = min(max(A,minValue),maxValue);
end

