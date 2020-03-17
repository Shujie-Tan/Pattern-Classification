% Obtain a 2D uniform random variables in (0,1).
close all;
clear;
figure();
rand('state',467);
x = rand(1000,3);
x1 = x(:,1);
x2 = x(:,2);
x3 = x(:,3);
% Do a histogram to plot.
% First get the height of the bars
scatter3(x1,x2,x3);
title("visualize 3D uniform random");
%%
figure();
% [X,Y,Z] = meshgrid(0:0.2:1,0:0.2:1,0:0.2:1);
[N,c] = hist3([x1,x2],[5,5]);
% Use the bar function to plot.
bar3(N);
set(gca,'XTickLabel',cell2mat(c(1)))
set(gca,'YTickLabel',cell2mat(c(2)))
title('Histogram of x1,x2 dimension of 3D random')
xlabel('x1');
ylabel('x2');
zlabel("Frequency");

figure();
% [X,Y,Z] = meshgrid(0:0.2:1,0:0.2:1,0:0.2:1);
[N,c] = hist3([x1,x3],[5,5]);
% Use the bar function to plot.
bar3(N);
set(gca,'XTickLabel',cell2mat(c(1)))
set(gca,'YTickLabel',cell2mat(c(2)))
title('Histogram of x1,x3 dimension of 3D random')
xlabel('x1');
ylabel('x3');
zlabel("Frequency");

figure();
% [X,Y,Z] = meshgrid(0:0.2:1,0:0.2:1,0:0.2:1);
[N,c] = hist3([x2,x3],[5,5]);
% Use the bar function to plot.
bar3(N);
set(gca,'XTickLabel',cell2mat(c(1)))
set(gca,'YTickLabel',cell2mat(c(2)))
title('Histogram of x2,x3 dimension of 3D random')
xlabel('x2');
ylabel('x3');
zlabel("Frequency");