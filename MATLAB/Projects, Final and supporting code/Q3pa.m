r = 2*ones(1,13);
p = poly(r);
f = @(x)polyval(p,x);
x = linspace(1.75,2.25);
f1 = (x-2).^13;

figure(4)
hold on
fplot(f,[1.75,2.25],'*','Markersize',5)
scatter(x,f1,'.')
hold off
