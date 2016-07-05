function [ out1 ] = RGBArea1(Ar0, nx, ny, IAr)
% RGBArea1 returns array with RGB components as entries in the area Ar0
% Array format:
% [R1 G1 B1]
% [R2 G2 B2]
% ...
% [Rn Gn Bn]
% IAr -- input array containing numbers of rectangulars in (x, y)-numeration
% IAr =
% [Ix1 Iy1]
% [Ix2 Iy2]
% 
% [Ixn Iyn]
% 
n0 = size(IAr, 1);
O1 = zeros(n0, 3);
d1 = size(Ar0, 1); 
d2 = size(Ar0, 2);
for i0 = 1:n0
    Ix=IAr(i0, 1);
    Iy=IAr(i0, 2);
    
    x01 = max(1,round(d1/nx*(Ix-1)));
    x02 = round(d1/nx*Ix);

    y01 = max(1, round(d2/ny*(Iy-1)));
    y02 = round(d2/ny*Iy);
    O1(i0, 1:3) =  RGBProp(Ar0, x01, y01, x02, y02);    
end
out1 =O1;
end

