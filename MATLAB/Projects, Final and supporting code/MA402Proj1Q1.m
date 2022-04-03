%MA 402 Project 1
%Elijah Hall

%%
%Part 1

t1=[1,-2,3]
t2=[3,10.^14,-1]
t3=[10.^-14,9,-3]
t4=[1,2,-10.^-14]
t5=[10.^18+1,2.*10.^18,10.^18-1]

[r1]=roots(t1);
[m1,m2]=myroots(1,-2,3);
m1=[m1
    m2];
[a1,a2]=myroots_acc(1,-2,3);
a1=[a1
    a2];
[r2]=roots(t2);
[m3,m4]=myroots(3,10.^14,-1);
m2=[m3
    m4];
[a3,a4]=myroots_acc(3,10.^14,-1);
a2=[a3
    a4];
[r3]=roots(t3);
[m5,m6]=myroots(10.^-14,9,-3);
m3=[m5
    m6];
[a5,a6]=myroots_acc(10.^-14,9,-3);
a3=[a5
    a6];
[r4]=roots(t4);
[m7,m8]=myroots(1,2,-10.^-14);
m4=[m7
    m8]
[a7,a8]=myroots_acc(1,2,-10.^-14);
a4=[a7
    a8];
[r5]=roots(t5);
[m9,m10]=myroots(10.^18+1,2.*10.^18,10.^18-1);
m5=[m9
    m10]
[a9,a10]=myroots_acc(10.^18+1,2.*10.^18,10.^18-1)
a5=[a9
    10]

table1=table(r1,m1,a1)
table2=table(r2,m2,a2)
table3=table(r3,m3,a3)
table4=table(r4,m4,a4)
table5=table(r5,m5,a5)
%%
table(table(r1,m1,a1),table(r2,m2,a2),table(r3,m3,a3),table(r4,m4,a4),table(r5,m5,a5))