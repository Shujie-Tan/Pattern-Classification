%%
clear;
syms x
Pw1 = 2/3; Pw2 = 1/3;
sigma1 = 0.5;sigma2 = 1.5;
mu1 = 2; mu2 = 1.5;
lambda = [1,4;3,2];
g1 = (lambda(2,1)-lambda(1,1)) * Pw1 * 1 / (sqrt(2*pi)*sigma1) * exp(- (x - mu1)^2 *0.5 / sigma1^2);
g2 =(lambda(1,2)-lambda(2,2)) * Pw2 * 1 / (sqrt(2*pi)*sigma2) * exp(- (x - mu2)^2 *0.5 / sigma2^2);
disp(lambda)
%%
eqn = g1 == g2;
solx = solve(eqn, x);
xvalues = vpa(solx);
fplot(g1);
hold on;
grid on;
fplot(g2);
yvalues = subs(g1,x,xvalues);
gscatter(vpa(solx), yvalues,["optimal decision bound 1","optimal decision bound 2"]);
legend("(\lambda_{21}-\lambda_{11})p(x|\omega_1)P(\omega_1)","(\lambda_{12}-\lambda_{22})p(x|\omega_2)P(\omega_2)" ...
       ,"optimal decision bound 1","optimal decision bound 2");
disp(xvalues);
disp(yvalues);
hold off;

