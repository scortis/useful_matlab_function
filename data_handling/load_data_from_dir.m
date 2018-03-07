function [ data, names ] = load_data_from_dir( path )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
namesRaw = ls([path '\*.mat']);
row = [];
k = 1;
for k = 1:size(namesRaw,1)
    row = [path '\' namesRaw(k,:)];
    if(~ischar(row)) break; end;
    try
        data{k} = load(row);
        names{k} = row;
        disp(['File ' row ' is loaded']);
    catch err
        disp(err.message);
    end
end
end

