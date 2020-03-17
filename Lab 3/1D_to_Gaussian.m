%% Obtain a vector of uniform random variables in (0,1).
close all; clear;
figure();
rand('state',15403728);
x = rand(1,1000);
u1 = x(1:2:end);
u2 = x(2:2:end);
z1 = sqrt(-2 .* log(u1)) .* cos(2 * pi .* u2);
z2 = sqrt(-2 .* log(u1)) .* sin(2 * pi .* u2);
% visualization by plot (z1,z2)
plot(z1,z2);
xlabel("z1"); ylabel("z2");
% pdf of z1 and z2
figure();
histogram(z1,'Normalization','pdf');
title("pdf of z1");
figure();
histogram(z2,'Normalization','pdf');
title("pdf of z2");

MuEstimated = mean(z1')';
CovEstimated = cov(z1')
[hist, bins] = hist(z1, 30);
hist = hist ./100;
%% convert to distribution with mean -2 and standard deviation
Ym = sqrt(3) .* z1 + (-2);
figure();
histogram(Ym,'Normalization','pdf');
title("pdf of Ym");
MuEstimatedYm = mean(Ym')';
CovEstimatedYm = cov(Ym');