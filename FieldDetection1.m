function [ OAR ] = FieldDetection1(Ar2, NX, NY, nx, ny)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%% Ar2 = imread(FName);
SplitDisp(Ar2, NX, NY, 2, [15 200 16], [1 1 1], 0);
% imshow(Ar1);

d1 = size(Ar2, 1);
d2 = size(Ar2, 2);
OAR = zeros(NX+1, NY+1);
StatSer = zeros(1, nx*ny);

for i1 = 1:NX
    for i2 = 1:NY
%         X1 = round(d1/NX*(i1-1)+1);
%         X2 = min(round(d1/NX*i1), d1);
%         Y1 = round(d2/NY*(i2-1)+1);
%         Y2 = min(round(d2/NY*i2), d2);
%         RGB00 = RGBProp(Ar2, X1, Y1, X2, Y2);
%         RatioM = RGB00(1)/(RGB00(1)+RGB00(2));
        k=1;
        for j1 = 1:nx
          for j2 = 1:ny
           X01 = round(d1/NX*(i1-1)+1+d1/NX/nx*(j1-1));
           X02 = min(round(d1/NX*(i1-1)+d1/NX/nx*j1), d1);
           Y01 = round(d2/NY*(i2-1)+1+d2/NY/ny*(j2-1));
           Y02 = min(round(d2/NY*(i2-1)+d2/NY/ny*j2), d2);
           RGB0 = RGBProp(Ar2, X01, Y01, X02, Y02);
           StatSer(k) = RGB0(1)/(RGB0(1)+RGB0(2));
           k=k+1;
          end;            
        end;
        OAR(i1,i2) = std(StatSer);
    end;
end;

end