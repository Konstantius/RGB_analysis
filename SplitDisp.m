function [out0 ] = SplitDisp(Ar1, nx, ny, think1, TextColor, BackColor, lables)
%               SplitDisp(Ar1, nx, ny)
% nx -- number of split points on X
% ny -- number of split points on Y
% think1 -- thickness of grid
% lables	= 0 (no lables), = 1 (dislay lables text without background), 2 =  (dislay lables text with background)
% TextColor = [R G B] Component of text color
% BackColor = [R G B] Component of backgroun color

if think1<=1 
    th1=1;
elseif think1 >= 2 & think1 <= 6
    th1 =think1;
else
   th1 = 7;
end;

Ar2 = Ar1;
d1 = size(Ar1, 1);        d2 = size(Ar1, 2);
for i0=1:nx-1
    Ar2(round(i0/nx*d1):round(i0/nx*d1)+th1-1, :, 2:3)=255;    
end
for i0=1:ny-1
    Ar2(:, round(i0/ny*d2):round(i0/ny*d2)+th1-1, 2:3)=255;
end

%  text(40, 40, '(1,1)') 

imshow(Ar2);
if lables >= 1 
for i0=0:nx-1
    for i1=0:ny-1       
      if lables == 2
       text(round(i1/ny*d2)+3, round(i0/nx*d1)+7, ['(' num2str(i0+1)  ', ' num2str(i1+1) ')'],  'VerticalAlignment', 'top', 'Color', [TextColor(1) TextColor(2) TextColor(3)], ...
       'BackgroundColor', [BackColor(1) BackColor(2) BackColor(3)]);
      end;
      if lables == 1
       text(round(i1/ny*d2)+3, round(i0/nx*d1)+7, ['(' num2str(i0+1)  ', ' num2str(i1+1) ')'],  'VerticalAlignment', 'top', 'Color', [TextColor(1) TextColor(2) TextColor(3)]);
      end;   

    end;
end;
end;
out0=0;

end