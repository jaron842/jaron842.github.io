%% Part 1

format long
[r1,r2]= myroots(1,-2,3);
[r3,r4]= myroots(3,10e14,-1);
[r5,r6]= myroots(10e-14,9,-3);
[r7,r8]= myroots(1,2,-10e-14);
[r9,r10]= myroots((10e8)+1,2*10e8,(10e8)-1);

%% Part 2

x= linspace(0,1,100);
func= log(1+x);
f= diff(func);
fplot(f,[0 1])


%% Part 3

r= 2*ones(1,13);
p= poly(r);
f= @(x)polyval(p,x);

