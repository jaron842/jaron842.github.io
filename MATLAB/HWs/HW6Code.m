load hw6p3.mat
p = polyfit(xs,yn,3)
y1 = polyval(p,xs);
%Now I will plot for comparison%
figure 
plot(xs,yn,'o')
hold on
plot(xs,y1)
hold off
%%
A = [9, 8, 10; 2, 10, -6; 5, 3, 7; 10, 1, 19];
b = [9; 10; 7; 6];
[U,S,V] = svd(A);
SI = pinv(S);
Ut = transpose(U);
Adag = V*SI*Ut;
x1 = Adag*b;
x2 = A\b;
n1 = norm(b-(A*x1));
n2 = norm(b-(A*x2));
r1 = b - (A*x1);
r2 = b - (A*x2);
Z = null(A);
xz = Z+x1;