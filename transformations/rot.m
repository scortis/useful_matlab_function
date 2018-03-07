function [ ptst ] = rot( pts, yaw,pitch,roll )
M = transformation_matrix('rotate', yaw, pitch,roll);
ptst = M * pts;
end

