function [ str ] = num2strfixed( num, places, putplus )
if nargin < 3
    putplus = 0;
end
prefix = '';
if(putplus && num>=0)
    prefix = '+';
end
str = strrep(num2str(num/(10^(places-1)),[ prefix '%.' num2str(places-1) 'f']), '.', '');

end

