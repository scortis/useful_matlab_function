function [ out ] = maxpos( M )
sz = size(M);
dim = length(sz);
[~,idx] = max(M(:));
assign = '[x1';
for k=2:dim
    assign = [assign ',x' num2str(k)];
end
assign = [assign ']'];
eval ([assign '= ind2sub(sz, idx);']);
eval (['out = ' assign ';']);
end

