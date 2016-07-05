function [ out1 ] = RGBProp(Ar1, x1, y1, x2, y2)
% Function RGBProp calculates R, G, B components in subarray of Ar1 image
% array (true color)
% 




Ar2=Ar1(x1:x2, y1:y2, 1:3);

R1=0;
for i1 =1:x2-x1+1
 R1=R1+mean(Ar2(i1, :, 1));    
end;
R1=R1/(x2-x1+1);


R2=0;
for i1 =1:x2-x1+1
 R2=R2+mean(Ar2(i1, :, 2));    
end;
R2=R2/(x2-x1+1);


R3=0;
for i1 =1:x2-x1+1
 R3=R3+mean(Ar2(i1, :, 3));    
end;
R3=R3/(x2-x1+1);


out1 = [R1 R2 R3];

end

