n= 500;
s= 0;
for i= 1:n
    theter= 2*pi*rand; 
    x1 = 2*cos(theter);
    y1 = 2*sin(theter);
   rt= 2-2.*sin(theter)+sin(theter).*(sqrt(abs(cos(theter)))./(sin(theter)+1.4));
   [output,r3]= circlegen(x1,y1);
   if pi*(rt).^2 <= r3
       tableP(i,:)=s;
      s=s+1;
   end
end
N=500;
s=0;
E2 = sum(tableP(i,:));
EX = (25/n)*E2;
for i= 1:N
  theter= 2*pi*rand; 
   x1 = 2*cos(theter);
   y1 = 2*sin(theter);
   rt= 2-2.*sin(theter)+sin(theter).*(sqrt(abs(cos(theter)))./(sin(theter)+1.4));
   if 12.52 <= pi*(rt.^2)
        tableA3(i,:)=1;
      s=s+1;
   end
end

EC = 12.566;
a = -0.4;
X1 = 12.45; %the result from the 500 trials earlier in part 2%
ZC = 12.5100;
A = tableA3(:,1);
B = sqrt(500);
sigma1 = std(A)*25;
sigma5 = B*sigma1;
SE = sigma1/sqrt(n);
a = -.4;
AP = sum(A);
AZ = (25/N)*AP;
Z2 = X1 + a.*(AZ - (4*pi))
Z2C = 12.5165;  
%%
%I got the Z2 to get this value a couple of times. This is as close as it
%got to the actual area. 
%% There is some weird bug with the tableP sum that I cannot fix. Adjenae's
%code again introduces the bug with running the code multiple times 
%that I cannot fix. This project is a nightmare. 