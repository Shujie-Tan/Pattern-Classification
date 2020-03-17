%%
x = [9:15];
w1 = [1,2,5,3,5,2,2];
PxW1 = w1 / sum(w1);
w2 = [1,4,7,4,2,1,1];
PxW2 = w2 / sum(w2);
hold on;
plot(x,PxW1);
plot(x,PxW2);
legend('p(x|\omega_1)','p(x|\omega_2)');
xlabel('x');
ylabel('p(x|\omega_1),p(x|\omega_2)');
plot(x,PxW1,'xr');
plot(x,PxW1,'s');
hold off;
% set(gca, 'TickLabelInterpreter', 'latex', 'YTickLabel', {'$\frac{1}{20}$', '$\frac{1}{8}$', '$\frac{3}{16}$', '$\frac{1}{4}$', '$\frac{5}{16}$', '$\frac{3}{8}$', '$\frac{7}{16}$', '$\frac{1}{2}$'})
%%
Pw1 = sum(w1)/(sum(w1)+sum(w2));
Pw2 = 1 - Pw1;
Px = PxW1 .* Pw1 + PxW2 .* Pw2;
Pw1X = PxW1 * Pw1 ./ Px;
Pw2X = PxW2 * Pw2 ./ Px;
plot(x,Pw1X);
hold on;
plot(x,Pw2X);
legend('p(\omega_1|x)','p(\omega_2|x)');
title("Posterior probabilities");
xlabel('x');
ylabel('p(\omega_i|x)');
hold off;
%%
