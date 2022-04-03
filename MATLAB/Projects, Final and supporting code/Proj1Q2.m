%% Part 2

x= linspace(0,1,100);
func= log(1+x);
f= diff(func);
f1= [f,0];
f2= (log(1+x+.3)-log(1+x))/0.3;
f3= (log(1+x+.3)-log((1+x)-.3))/0.6;

figure(1)
plot(f1,x,f2,x,f3,x)
title('True Derivative of f(x)=log(1+x) and its Approximations')
xlabel('X-values')
ylabel('Derviative at X')
lgd= legend('True Derivative','Approximation 1','Approximation 2');
lgd.FontSize= 18;
lgd.Location= 'southeast';

relative_errorp1=(f2-f3);
relative_error=relative_errorp1./f2;

figure(2)
plot(x,relative_error)
title('Relative Error at X')
xlabel('X-values')
ylabel('Relative Error')

figure(3)
h= logspace(-1,-15);
x1=0;
f4= (log(1+x1+h)-log(1))./h;
f5= (log(1+x1+h)-log((1+x1)-h))/2.*h;
relative_errorp2=(f4-f5);
relative_error1=relative_errorp2./f4;
loglog(h,relative_error1)
title('Relative Error at h')
xlabel('h-values')
ylabel('Relative Error')

