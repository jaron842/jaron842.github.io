%%
A = [1 1 0 0; 0 1 1 0; 0 0 1 1; 1 0 0 1];
[U,S,V] = svd(A);
U1 = U(:,1:1);
S1 = S(1:1,1:1);
V1 = V(:,1:1);
AI = inv(A);
AT = transpose(A);
AC = A*AT;
ACI = inv(AC);
P = A*ACI*AT;
PT = transpose(P);
D = det(A);
%%
N = 5000;
H = randn(N);
G = randn(N,1);
start1 = tic; 
J = H\G;
time1 = toc(start1)
start2 = tic;
Y = inv(H)*G;
time2 = toc(start2)
relerror = (abs(J - Y)./(abs(J)));
%%
format long
L = [1, 1+ (10^(-8)); 1+ (10^(-8)), 1];
[U1,S1,V1] = svd(L);
LP = inv(L);
[U2,S2,V2] = svd(LP);
b = [1, 1];
bbar = [1+(10^(-12)), 1];
n = norm(b);
n1 = norm(b - bbar);
relerrorb = n1/n;
KA = 2.00000004215494216077471;
x = [(99999999/200000000), 1/2];
xbar = [(3.04658E15/6.09377E15) , (195020/390001)];
relerrorx = (norm(xbar - x))/(norm(x));
K1 = relerrorx/relerrorb;
