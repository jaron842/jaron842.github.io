%Prob 1%
x = [1 5 7];
y = [2 8 9];
B = x*transpose(y);
%%
%Prob 4%
A = [11, 12, 10, 3; -1, -4, -4, -1; -10, 8, 11, 2];
R = rank(A);
[U,S,V] = svd(A);
N1 = norm(A);
N2 = norm(A,'fro');
k=1;
UT = U(:,1:k);
ST = S(1:k,1:k);
VT = V(:,1:k);
AT = UT*ST*transpose(VT);
ATR = transpose(A);
AM = A*ATR;
AMI = inv(AM);
P = ATR*AMI*A
%%
Z = gallery('cauchy',10);
x = [1,2,3,4,5,6,7,8,9,10];
xt = transpose(x);
b = Z*xt;
y = Z\b;
n = norm(y-xt)/norm(xt);
%%
P = [3, 4; 3, 4];
L = [13; 13];
[U1,S1,V1] = svd(P);
U1T = transpose(U1);
S1I = inv(S1);
Pdag = U1T*S1I*V1;
PT = transpose(P);
Y = PT*L;
YN = norm(Y);
YO = [3; 1];
YON = norm(YO);
Y2 = [(1/3);3];
Y3 = [(1/6); (25/8)];