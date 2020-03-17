% Obtain a 2D uniform random variables in (0,1).
clear; close all;
figure();
rand('state',433);
x1 = rand(1000,2);
% Do a histogram to plot.
% First get the height of the bars
scatter(x1(:,1), x1(:,2));
title("visualize 2D uniform random");
%%
figure();
[N,c] = hist3(x1,[5,5]);
% Use the bar function to plot.
N = N ./ 1000;

bar3(N);
set(gca,'XTickLabel',cell2mat(c(1)))
set(gca,'YTickLabel',cell2mat(c(2)))
title('Histogram of 2D Uniform Random Variables')
xlabel('x1');
ylabel('x2');
zlabel("Probability");