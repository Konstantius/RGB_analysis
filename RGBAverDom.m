function [ out1 ] = RGBAverDom(Ar1, x1, y1, x2, y2, think1)
% Function RGBProp calculates R, G, B components in subarray of Ar1 image
% array (true color)
% 

d1 = size(Ar1, 1);
d2 = size(Ar1, 2);

if x2>d1
  x2=d1
end;

if y2>d2
  y2=d2
end;

if think1<=1 
    th1=1;
elseif think1 >= 2 & think1 <= 6
    th1 =think1;
else
   th1 = 7;
end;

Ar2 = Ar1;
d1 = size(Ar1, 1);     d2 = size(Ar1, 2);

Ar2(x1:x1+th1-1, y1:y2, 2:3)=255;    
Ar2(x2-(th1-1):x2, y1:y2, 2:3)=255;    
Ar2(x1:x2, y1:y1+th1-1, 2:3)=255;    
Ar2(x1:x2, y2-(th1-1):y2, 2:3)=255;   

image(Ar2);
grid on;

%          Ar2=Ar1(x1:x2, y1:y2, 1:3);
SM=0; R = 0; G = 0; B = 0;
for i = x1:x2
  jB=-1;
  for j= y1:y2
    if Ar1(i,j,1)^2+Ar1(i,j,2)^2+Ar1(i,j,3)^2>0
      jB=j;
      break;
    end;
  end;  
  if jB>0
    for j=y2:-1:y1
    if Ar1(i,j,1)^2+Ar1(i,j,2)^2+Ar1(i,j,3)^2>0
      jE=j;
      break;
    end;
    end;
    SM=SM+jE-jB+1;
    Rt=sum(Ar1(i, jB:jE,1));
    R = R+Rt;
    G = G+sum(Ar1(i, jB:jE, 2));
    B = B + sum(Ar1(i, jB:jE, 3));
   end;  
end;


out1 = [R/SM G/SM B/SM];

end