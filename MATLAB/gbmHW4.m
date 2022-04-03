% Geometric brownian motion   |
% Simulating the stock market |
%-----------------------------%

NTRIALS = 10000; % number of trials
T = 30; % number of years
SPEND = 60000; % amount you will spend each year

mu = 0.05; % yearly rate
sg = 0.04; % volatility
MONEY = 1000000; % starting money

%-----------------------------%
%-----------------------------%


nsteps = 12*T;  
dt = T/nsteps; % update one month at a time

ss = zeros(1,nsteps+1); 
ts = linspace(0,T,nsteps+1);  
endvals = zeros(1,NTRIALS); 

close all
figure('Position',[100 300 600 300]); 
subplot(1,2,1), hold on

for n = 1:NTRIALS
    s = MONEY; 
    for itn = 1:nsteps
        ss(itn) = s; 
        s = s + s*(mu*dt + sg*randn()*sqrt(dt)) - SPEND*dt;
        s = max(s,0); % This kicks in if you go broke
    end
    ss(end) = s; 
    endvals(n) = s; 
    plot(ts,ss); 
end

title("Portfolio Value over Time", 'FontSize',18); 
xlabel("Time (years)",'FontSize',18); 
ylabel("Value (dollars)", 'FontSize',18); 

subplot(1,2,2)
histogram(endvals,'NumBins',30); 
title("Portfolio Value at Time T",'FontSize',18); 
xlabel("Value",'FontSize',18); 
ylabel("Frequency",'FontSize',18); 