function [ Xt,Yt,Zt ] = transformXYZ(M, X, Y, Z, centerpoint)

    if nargin == 5
        X = X-centerpoint(1);
        Y = Y-centerpoint(2);
        Z = Z-centerpoint(3);
    end

    [sy,sx] = size(X);
    x = reshape(X,1,[]);
    y = reshape(Y,1,[]);
    z = reshape(Z,1,[]);
    points = [x;y;z];
    points = M * points;
    Xt = reshape(points(1,:),sy,sx);
    Yt = reshape(points(2,:),sy,sx);
    Zt = reshape(points(3,:),sy,sx);

    if nargin == 5
        Xt = Xt+centerpoint(1);
        Yt = Yt+centerpoint(2);
        Zt = Zt+centerpoint(3);
    end

end

