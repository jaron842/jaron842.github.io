function [output,r]= in_heart(x,y)

theta= atan2(y,x);
r= 2-2.*sin(theta)+sin(theta).*(sqrt(abs(cos(theta)))./(sin(theta)+1.4));
r2= sqrt(x.^2+y.^2);
if r2 <= r
    output= true;
else
    output= false;
end
end
    
