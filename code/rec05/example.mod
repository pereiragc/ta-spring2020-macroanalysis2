
% Numerical Example - Using Dynare to solve models
% Macroeconomic Theory II - Columbia Economics MA Program

% Endogenous variables:
var y c i k n r a; 

% Exogenous variables:
varexo e;

parameters alph betta deltta theta_n rrho sigmma;
alph = 0.33;
sigmma = 0.01;
betta = 0.988;
deltta = 0.025;
theta_n = 1.5;
rrho = 0.9;

% Model equilibrium conditions:
model;
(1/c) = betta*(1/c(+1))*(1- deltta + alph*(k^(alph-1))*(a(+1)*n(+1))^(1-alph));
theta_n/(1-n) = 1/c*(1-alph)*(k(-1)^alph)*a^(1-alph)*n^(-alph);
c + i = y;
y = (k(-1)^alph)*(a*n)^(1-alph);
i = k - (1-deltta)*k(-1);
r = alph*k(-1)^(alph-1)*(a*n)^(1-alph);
log(a) = rrho*log(a(-1)) + e;
end;

initval;
k = 1;
c = 1;
n = 0.2;
a = 1; 
e = 0;
end;

shocks;
var e = sigmma^2;
end;

steady;

stoch_simul(order=1,irf=100, loglinear); % the option loglinear performs a log linearization, instead of a linearization)
