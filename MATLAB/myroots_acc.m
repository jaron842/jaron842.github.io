function [r1,r2] = myroots_acc(a,b,c)

d=b.^2-4.*a.*c

r1=((-b-sign(b).*sqrt(d))./2.*a)
r2=c./(a.*r1)

end
