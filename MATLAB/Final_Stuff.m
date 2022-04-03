%Problem 11%
A = [ 1, 2; -1, -2; 10^-10, 0];
b = [1; 1; 1];
[U,S,V] = svd(A);
SI = pinv(S);
Adag = transpose(V)*SI*transpose(U);
x = Adag*b
%%
%Problem 12%
ts = [0; 1; 4; 6];
ys = [4; 22; 32; 10];
tp = linspace(0,6,15);
p = polyfit(ts,ys,2);
plot(ts,ys,'*',tp,polyval(p,tp))