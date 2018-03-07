function [ data, names ] = load_data( folderOrFiles, files )
% LOAD_DATA
% [ data, names ] = load_data( folderOrFiles, files )
% loads files or folder into variable data
if(nargin == 1)
    files = folderOrFiles;
    folder = '';
else
    folder = folderOrFiles;
end
for k = 1:length(files)
    toLoad = [folder files{k}];
    try
        data{k} = load(toLoad);
        names{k} = toLoad;
        disp(['File ' toLoad ' is loaded']);
    catch err
        disp(err.message);
    end
end
end

