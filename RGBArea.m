function [ out1 ] = RGBArea(Ar0, nx, ny, Ix, Iy)
% RGBArea returns RGB components in area 

d1 = size(Ar0, 1);
d2 = size(Ar0, 2);

x01 = max(1,round(d1/nx*(Ix-1)));
x02 = round(d1/nx*Ix);

y01 = max(1, round(d2/ny*(Iy-1)));
y02 = round(d2/ny*Iy);

out1 = [RGBProp(Ar0, x01, y01, x02, y02)];


end

