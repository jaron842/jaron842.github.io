%Comment: this goes for both parts of my code. My group members were
%supposed to clean up this code and make it less tear-worthy, but they were
%not able to. I wrote literally all of this, so it does not seem fair for
%me to do more work on it. 
%Part a)%
load data.mat
E = An - A;
figure(1);
ax1 = subplot(2,1,1);
imshow(A)
ax2 = subplot(2,1,2);
imshow(An)
%part b)%
figure
[U,S,V] = svd(A);
[Un,Sn,Vn] = svd(An);
Sa = S(:,1:100);
Sa1 = Sn(:,1:100);
Sa0 = nonzeros(Sa);
Sa10 = nonzeros(Sa1);
X = linspace(0,100);
figure(2);
Q = semilogy(Sa0,X,'b',Sa10,X,'r');
title('Plot of the singular values of A and An')
legend('Singluar values of A','singular values of An')
%Part c)%
k1 = 5;
k2 = 10;
k3 = 15;
k4 = 20;
k5 = 25;
k6 = 30;
k7 = 35;
k8 = 40;
k9 = 45;
Unk1 = Un(:,1:k1);
Snk1 = Sn(1:k1,1:k1);
Vnk1 = Vn(:,1:k1);
Unk2 = Un(:,1:k2);
Snk2 = Sn(1:k2,1:k2);
Vnk2 = Vn(:,1:k2);
Unk3 = Un(:,1:k3);
Snk3 = Sn(1:k3,1:k3);
Vnk3 = Vn(:,1:k3);
Unk4 = Un(:,1:k4);
Snk4 = Sn(1:k4,1:k4);
Vnk4 = Vn(:,1:k4);
Unk5 = Un(:,1:k5);
Snk5 = Sn(1:k5,1:k5);
Vnk5 = Vn(:,1:k5);
Unk6 = Un(:,1:k6);
Snk6 = Sn(1:k6,1:k6);
Vnk6 = Vn(:,1:k6);
Unk7 = Un(:,1:k7);
Snk7 = Sn(1:k7,1:k7);
Vnk7 = Vn(:,1:k7);
Unk8 = Un(:,1:k8);
Snk8 = Sn(1:k8,1:k8);
Vnk8 = Vn(:,1:k8);
Unk9 = Un(:,1:k9);
Snk9 = Sn(1:k9,1:k9);
Vnk9 = Vn(:,1:k9);
Ank1= Unk1*Snk1*transpose(Vnk1); 
Ank2= Unk2*Snk2*transpose(Vnk2);
Ank3= Unk3*Snk3*transpose(Vnk3); 
Ank4= Unk4*Snk4*transpose(Vnk4); 
Ank5= Unk5*Snk5*transpose(Vnk5);
Ank6= Unk6*Snk6*transpose(Vnk6); 
Ank7= Unk7*Snk7*transpose(Vnk7); 
Ank8= Unk8*Snk8*transpose(Vnk8); 
Ank9= Unk9*Snk9*transpose(Vnk9); 
figure(3);
bx1 = subplot(3,3,1);
imshow(Ank1)
bx2 = subplot(3,3,2);
imshow(Ank2)
bx3 = subplot(3,3,3);
imshow(Ank3)
bx4 = subplot(3,3,4);
imshow(Ank4)
bx5 = subplot(3,3,5);
imshow(Ank5)
bx6 = subplot(3,3,6);
imshow(Ank6)
bx7 = subplot(3,3,7);
imshow(Ank7)
bx8 = subplot(3,3,8);
imshow(Ank8)
bx9 = subplot(3,3,9);
imshow(Ank9)
%Part d)%
Ferror1 = ((norm(A-Ank1,'fro')/(norm(A,'fro'))));
Ferror2 = ((norm(A-Ank2,'fro')/(norm(A,'fro'))));
Ferror3 = ((norm(A-Ank3,'fro')/(norm(A,'fro'))));
Ferror4 = ((norm(A-Ank4,'fro')/(norm(A,'fro'))));
Ferror5 = ((norm(A-Ank5,'fro')/(norm(A,'fro'))));
Ferror6 = ((norm(A-Ank6,'fro')/(norm(A,'fro'))));
Ferror7 = ((norm(A-Ank7,'fro')/(norm(A,'fro'))));
Ferror8 = ((norm(A-Ank8,'fro')/(norm(A,'fro'))));
Ferror9 = ((norm(A-Ank9,'fro')/(norm(A,'fro'))));
Ferrors = [Ferror1, Ferror2, Ferror3, Ferror4, Ferror5, Ferror6, Ferror7, Ferror8, Ferror9];
ks = [k1, k2, k3, k4, k5, k6, k7, k8, k9];
figure(4);
scatter(ks,Ferrors,'filled')
title('Relative errors versus k values')
xlabel('K values')
ylabel('Relative errors')
%Part e)%
%The 7th, 8th, or 9th images. The graph for part d) leads me to lean
%towards the 7th due to the lower relative error%