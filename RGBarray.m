function [ d1d2 ] = RGBarray(FNm, Fout, WSout, NX, NY, nx, ny)
% RGBarray(FNm, Fout, NX, NY, nx, ny)
% RGBarray exports image to Excel workbook
% FNm --- input image file
% WSout --- worksheet name
% NX --- large rectangular number horizontally
% NY --- large rectangular number vertically
% nx --- small rectangular number horizontally
% ny --- small rectangular number vertically
IMm = imread(FNm);
d1 = size(IMm, 1);
d2 = size(IMm, 2);
d1d2 = [d1 d2];
MS=zeros(1, 6);

for i1 =1:NX
  for j1 = 1:NY
    X01 = max(1, round(d1/NX*(i1-1)));
    X02 = round(d1/NX*i1);
    Y01 = max(1, round(d2/NY*(j1-1)));
    Y02 = round(d2/NY*j1);
    IM1 = IMm(X01:X02, Y01:Y02, :);
    
     for i2=1:nx
      for j2=1:ny
        RGB = RGBArea(IM1, nx, ny, i2, j2);
        MS = [MS; i1 j1 (i1-1)*NY+j1  RGB];
      end
    end
  end
end
%  MS(1,1) = 'Nx';
DateString = [WSout ' ' datestr(now, 'mm-dd-yyyy HH-MM-SS')];
xlswrite(Fout, MS, DateString, 'A1');
xlswrite(Fout, {'Nx' 'Ny' 'N' 'R' 'G' 'B'} , DateString, 'A1');
clear MS i1 j1;

end

