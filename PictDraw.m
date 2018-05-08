function [p1] = PictDraw(SV, NX, NY, Wi, He)
% PictDraw(Mtr,ing2)
%   Detailed explanation goes here
k0=1;
p1 = NX*NY;
Mtr=zeros(NX, NX);
for i=1:NX
  for j =1:NY
    Mtr(i,j)=SV(k0);
    k0=k0+1;
  end
end
image(Mtr,'CDataMapping','scaled');  
colorbar;
colormap(parula);
set(gca, 'visible', 'off');
set(gcf, 'position',[20,10,Wi, He])

end

