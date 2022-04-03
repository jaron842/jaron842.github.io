function [output,r3]= circlegen(x1,y1)

theta = atan2(y1,x1);
r3 = sqrt(4 - (cos(theta).^2))-sin(theta);
r4 = sqrt(x1.^2+y1.^2);
if r4 <= r3
    output= true;
else
    output= false;
end
end
    


