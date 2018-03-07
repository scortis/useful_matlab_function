function [ data, names ] = load_data_from_file( textfile )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
fil = fopen(textfile);
row = [];
k = 1;
while(true)
    row = fgetl(fil);
    if(~ischar(row)) break; end;
    try
        data{k} = load(row);
        names{k} = row;
        disp(['File ' row ' is loaded']);
        k = k+1;
    catch err
        disp(err.message);
    end
%     disp(row);
end
fclose(fil);
end

