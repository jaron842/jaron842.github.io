n=500;
s=0;
for i= 1:n
  theter= 2*pi*rand; 
   rt= 2-2.*sin(theter)+sin(theter).*(sqrt(abs(cos(theter)))./(sin(theter)+1.4));
   if 12.52 <= pi*(rt.^2)
        tableA1(i,:)=s;
      s=s+1;
   end
end
for i= 1:n
  theter= 2*pi*rand; 
   rt= 2-2.*sin(theter)+sin(theter).*(sqrt(abs(cos(theter)))./(sin(theter)+1.4));
   if 12.52 <= pi*(rt.^2)
        tableA2(i,:)=1;
      s=s+1;
   end
end

A = tableA2(:,1);
B = sqrt(500);
sigma1 = std(A)*25;
sigma5 = B*sigma1;
SE = sigma1/sqrt(n);

%% Results : for n = 10, i got expected value of 15.
% For n=50, I get roughly 14.5, which is better. 
% For n = 500, I get 12.45, which is pretty close. 
% I get roughly 12.5 for sigma and roughly 279.645 for the
% sigma_500. .55 for standard error
% Known bug: After I midified my code based on Adjenae's standard deviation
% method, if you run the code repeatedly the standard deviation eventually
% goes to zero. I am not good enough at MATLAB to fix this, sorry
