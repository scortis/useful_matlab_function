function [ Zeq, pn, Submat ] = equalize_surface( Z , degree, points)
if(nargin == 1)
    degree = 1;
end

sz = size(Z);
x = 1:sz(2);
y = 1:sz(1);
[X,Y]=meshgrid(x,y);

if(nargin == 3)
    ZVals=[];
    if(islogical(points))
        [mm,nn] = find(points);
        clear points;
        points(:,1) = nn;
        points(:,2) = mm;
    end
    for l = 1:size(points,1)
        ZVals = [ZVals Z(points(l,2),points(l,1))];
    end
    XVals = points(:,1);
    YVals = points(:,2);
    ne = size(points,1);
    ZVals = ZVals';
else
    XVals = reshape(X,[],1);
    YVals = reshape(Y,[],1);
    ZVals = reshape(Z,[],1);
    ne = sz(1)*sz(2);  
end

Eqmat = zeros(ne, 2*degree + 1);
for k = 1:degree
    dg = degree+1-k;
    Eqmat(:,2*k-1:2*k) = [XVals.^dg, YVals.^dg];
end

Eqmat(:,2*degree + 1) = ones(ne,1);
pn = (Eqmat'*Eqmat)\Eqmat'*ZVals;

Submat = pn(end) * ones(sz(1),sz(2));
for k = 1:degree
    dg = degree+1-k;
    Submat = Submat + pn(2*k-1).*X.^dg + pn(2*k).*Y.^dg; 
end
Zeq = Z - Submat;

end

