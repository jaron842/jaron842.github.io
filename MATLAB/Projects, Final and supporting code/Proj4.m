%Part one%
load mnistsmall.mat
trainXd = double(trainX);
testXd = double(testX);
columnmeanstrainX = mean(trainX, 1);
columnmeanstestX = mean(testX, 1);
for i=1:784
    testXdcenter(:,i) = testXd(:,i) - columnmeanstestX(i);
    trainXdcenter(:,i) = trainXd(:,i) - columnmeanstrainX(i);
end
[U,S,V] = svd(trainXdcenter);
[U1,S1,V1] = svd(testXdcenter);
k = 2;
U2 = U(:,1:k);
S2 = S(1:k,1:k);
V2 = V(:,1:k);
Xtraintrunc = U2*S2;
U3 = U1(:,1:k);
S3 = S1(1:k,1:k);
V3 = V1(:,1:k);
Xtesttrunc = testXdcenter*V2;
Xtraintrunc1 = Xtraintrunc(:,1);
trainyt = double(transpose(trainY));
figure
% change y axis, do not plot 4 and 6, y axis is second column of truncated
% data
for j = 1:1960
    a(j) = trainyt(j);
    at = transpose(a);
    if at(j) == 4
        c = 'r*';
    else
        c = 'b*';
    end
    scatter(Xtraintrunc1(j),at(j),c)
    hold on
end
savefig('TwoLines.fig')
%%
%Part two%
 Zt = [0];
for k = 1:1960
    b(k) = trainyt(k);
    bt = transpose(b);
    if bt(k) == 4
        Zt(end+1) = 1;
    else 
        Zt(end+1) = -1;
    end
end
Zt(1) = [];
%Zt is RHS of LSQ problem, matrix A is column of ones + measurements
%Have a look at posted lecture code%
pows=[0 1];
A_1=Xtraintrunc(:,1).^pows;
A_2=Xtraintrunc(:,2).^pows;
A=[A_1,A_2(:,2)];
b=transpose(Zt);
A\b;
for i=1:1960
    Z_predict=-.0102+.0012*(Xtraintrunc(i,1))-.0006*(Xtraintrunc(i,2));
    if Z_predict<0
        Z_predict=6;
    else
        Z_predict=4;
    end
Z_predictionmatrix(i)=Z_predict;
i=i+1;
end
Z_compare=[Z_predictionmatrix;Zt]
N=0;
H=0;
sum(Z_predictionmatrix==4);
sum(Z_predictionmatrix==6);
for i=1:1960 
    if Z_predictionmatrix(i)==4 & Zt(i)<0
        N=N+1;
    end
    if Z_predictionmatrix(i)==6 & Zt(i)>0
        H=H+1;
    end
end
N;
H;
error_in_4=N/sum(Z_predictionmatrix==4)
error_in_6=H/sum(Z_predictionmatrix==6)
for i=1:1960
    Z_predict1(i)=-.0102+.0012*(Xtraintrunc(i,1))-.0006*(Xtraintrunc(i,2));
end
Z_predict2 = Z_predict1 + 5;
xs = linspace(0,30,1960);
%%
openfig('TwoLines.fig');
hold on
plot(xs,Z_predict2,'k')
%%
for i=1:324
    Z_predicttest=-.0102+.0012*(Xtesttrunc(i,1))-.0006*(Xtesttrunc(i,2));
    if Z_predicttest<0
        Z_predicttest=6
    else
        Z_predicttest=4
    end
Z_predictionmatrixt(i)=Z_predicttest;
i=i+1
end
N=0
H=0
sum(Z_predictionmatrixt==4)
sum(Z_predictionmatrixt==6)
for i=1:324 
    if Z_predictionmatrixt(i)==4 & Zt(i)<0
        N=N+1;
    end
    if Z_predictionmatrixt(i)==6 & Zt(i)>0
        H=H+1;
    end
end
N;
H;
error_in_4=N/sum(Z_predictionmatrixt==4)
error_in_6=H/sum(Z_predictionmatrixt==6)
