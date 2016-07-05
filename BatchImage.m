[num, FList, raw]= xlsread('c:\MDS\MATLAB\RGB_analysis\FList.xlsx', 'FList', 'A1:A44');
[NofRows, n] = size(FList);
for i = 1:NofRows
  R1G1B1 = RGBAreaAll(char(FList(i)));
  disp([FList(i)  R1G1B1(1) R1G1B1(2) R1G1B1(3)])
end;