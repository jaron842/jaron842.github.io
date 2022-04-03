n= 500;
s= 0;
for i= 1:n
   x=5.*rand-2.5;
   y=5.*rand-4; 
   [output,r]= in_heart(x,y);
   if sqrt(x.^2+y.^2) <= r
      s=s+1;
   end
end
N = 500;
for i=1:N
    x=5*rand-2.5;
    y=5*rand-4;
    X(i,:)=in_heart(x,y);
end

Xn=sum(X.*25)/N;
X= X.*25;
standard_dev= std(X);
standard_error= standard_dev/sqrt(N);


%% I get roughly 12.5 for sigma, and roughly 279.51 for sigma_500.
% .55 for standard error