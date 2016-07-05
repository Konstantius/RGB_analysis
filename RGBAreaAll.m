function [out1] = RGBAreaAll(FName)
%        RGBAreaAll returns RGB components in hole area 

Ar0 = imread(FName);
d1 = size(Ar0, 1);
d2 = size(Ar0, 2);

R1=mean(mean(Ar0(:, :, 1)));
R2=mean(mean(Ar0(:, :, 2)));
R3=mean(mean(Ar0(:, :, 3)));


out1 = [R1 R2 R3];

end

