%Comment: This code seems to run 100% correct only on the second time
%around. I am not sure why and was not able to fix this, sorry
load deblur.mat
xr = reshape(xtrue,64,64);
br = reshape(b,64,64);
bnr = reshape(bn,64,64);
figure(1)
cx1 = subplot(1,3,1);
imshow(xr)
cx2 = subplot(1,3,2);
imshow(br)
cx3 = subplot(1,3,3);
imshow(bnr)
%Part c)%
As = sparse(A);
Xn = As\bn;
Xnr = reshape(Xn,64,64);
figure(2);
dx1 = subplot(1,2,1);
imshow(Xnr)
dx2 = subplot(1,2,2);
imshow(xr)
[UA,SA,VA] = svd(A);%This runs quite slow, but I do not see a way around
%it%
%Part d)%
SingvalsA = nonzeros(SA);
Sing1 = SingvalsA(1);
Singn = SingvalsA(4096);
Ka = Sing1/Singn;
%The solution would perform badly due to the A condidion number being much
%higher than the b condidion number%
Kb = .05;
L = linspace(1,4096,4096);
figure(3);
plot(L,SingvalsA)
title('Singular values of A')
ylabel('Singular values')
xlabel('n')
%Part e)%
%%
kay1 = 400;
kay2 = 800;
kay3 = 1200;
kay4 = 1600;
kay5 = 2000;
kay6 = 2400;
kay7 = 2800;
kay8 = 3200;
kay9 = 3600;
kays =[kay1, kay2, kay3, kay4, kay5, kay6, kay7, kay8, kay9];
UAk1 = UA(:,1:kay1);
SAk1 = SA(1:kay1,1:kay1);
VAk1 = VA(:,1:kay1);
UAk2 = UA(:,1:kay2);
SAk2 = SA(1:kay2,1:kay2);
VAk2 = VA(:,1:kay2);
UAk3 = UA(:,1:kay3);
SAk3 = SA(1:kay3,1:kay3);
VAk3 = VA(:,1:kay3);
UAk4 = UA(:,1:kay4);
SAk4 = SA(1:kay4,1:kay4);
VAk4 = VA(:,1:kay4);
UAk5 = UA(:,1:kay5);
SAk5 = SA(1:kay5,1:kay5);
VAk5 = VA(:,1:kay5);
UAk6 = UA(:,1:kay6);
SAk6 = SA(1:kay6,1:kay6);
VAk6 = VA(:,1:kay6);
UAk7 = UA(:,1:kay7);
SAk7 = SA(1:kay7,1:kay7);
VAk7 = VA(:,1:kay7);
UAk8 = UA(:,1:kay8);
SAk8 = SA(1:kay8,1:kay8);
VAk8 = VA(:,1:kay8);
UAk9 = UA(:,1:kay9);
SAk9 = SA(1:kay9,1:kay9);
VAk9 = VA(:,1:kay9);
x1 = VAk1*((SAk1)\(transpose(UAk1)*bn));
x2 = VAk2*((SAk2)\(transpose(UAk2)*bn));
x3 = VAk3*((SAk3)\(transpose(UAk3)*bn));
x4 = VAk4*((SAk4)\(transpose(UAk4)*bn));
x5 = VAk5*((SAk5)\(transpose(UAk5)*bn));
x6 = VAk6*((SAk6)\(transpose(UAk6)*bn));
x7 = VAk7*((SAk7)\(transpose(UAk7)*bn));
x8 = VAk8*((SAk8)\(transpose(UAk8)*bn));
x9 = VAk9*((SAk9)\(transpose(UAk9)*bn));
x1r = reshape(x1,64,64);
x2r = reshape(x2,64,64);
x3r = reshape(x3,64,64);
x4r = reshape(x4,64,64);
x5r = reshape(x5,64,64);
x6r = reshape(x6,64,64);
x7r = reshape(x7,64,64);
x8r = reshape(x8,64,64);
x9r = reshape(x9,64,64);
figure(4);
ex1 = subplot(3,3,1);
imshow(x1r)
ex2 = subplot(3,3,2);
imshow(x2r)
ex3 = subplot(3,3,3);
imshow(x3r)
ex4 = subplot(3,3,4);
imshow(x4r)
ex5 = subplot(3,3,5);
imshow(x5r)
ex6 = subplot(3,3,6);
imshow(x6r)
ex7 = subplot(3,3,7);
imshow(x7r)
ex8 = subplot(3,3,8);
imshow(x8r)
ex9 = subplot(3,3,9);
imshow(x9r)
%Part f) I assume we use the relative error in the Frobenius norm here
%too. I will have to reshape my solutions for the truncated SVDS as well.
%%
relerror1 = ((norm(xr-x1r,'fro')/(norm(xr,'fro'))));
relerror2 = ((norm(xr-x2r,'fro')/(norm(xr,'fro'))));
relerror3 = ((norm(xr-x3r,'fro')/(norm(xr,'fro'))));
relerror4 = ((norm(xr-x4r,'fro')/(norm(xr,'fro'))));
relerror5 = ((norm(xr-x5r,'fro')/(norm(xr,'fro'))));
relerror6 = ((norm(xr-x6r,'fro')/(norm(xr,'fro'))));
relerror7 = ((norm(xr-x7r,'fro')/(norm(xr,'fro'))));
relerror8 = ((norm(xr-x8r,'fro')/(norm(xr,'fro'))));
relerror9 = ((norm(xr-x9r,'fro')/(norm(xr,'fro'))));
relerrors = [relerror1, relerror2, relerror3, relerror4, relerror5, relerror6, relerror7, relerror8, relerror9];
figure(5);
plot(kays,relerrors)
title('Relative errors as a function of truncation rank')
ylabel('Relative errors')
xlabel('Truncation rank')
%The approximate minimum is at k = 1600.%
%The relative error behaves as a quadratic function of the truncation
%index, with a minimum (vertex) at k=1600, RE = .1702%