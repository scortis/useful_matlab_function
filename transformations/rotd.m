function [ ptst ] = rotd( pts, yaw,pitch,roll )
M = transformation_matrix('rotate', deg2rad(yaw), deg2rad(pitch),deg2rad(roll));
ptst = M * pts;
end

