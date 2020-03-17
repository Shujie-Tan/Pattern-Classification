% Obtain a vector of uniform random variables in (0,1).
close all; clear;
figure();
rand('state',15403728);
x1 = rand(1,100000);
% Do a histogram to plot.
% First get the height of the bars
scatter(x1, ones(1,100000));
title("visualize 1D uniform random");

figure();
[N,X] = hist(x1,20);
% Use the bar function to plot.
N = N ./ 100000;
bar(X,N,1,'w')
title('Histogram of 1D Uniform Random Variables of 100000')
xlabel('x');
ylabel('Frequency');
