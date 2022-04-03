%%Circle bit%%
n= 500;
s= 0;
for i= 1:n
   x1=5.*rand-2.5;
   y1=5.*rand-4; 
   [output,r3]= circlegen(x1,y1);
   if sqrt(x1.^2+y1.^2) <= r3
       tableA(i,:)=s;
      s=s+1;
   end
end
N = 500;
for i=1:N
    x=5*rand-2.5;
    y=5*rand-4;
    X1(i,:)=circlegen(x,y);
end
EF = s*(25/n); 
EP = sum(tableA(i,:));
EZ = (25/n)*EP;
Y = 12.5000;
EY = 12.566;
a = -0.4;
X = 12.5500; %the result from the 500 trials%
Z = X + a.*(EF - EY)    
%Almost exactly correct. Awesome!%
Z1 = 12.5164;   
SD = std(X1)*25
S5 = sqrt(N)*SD
%If we average out all the Zs, the expected value of Z should be the area
%of the heart. :) %