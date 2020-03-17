clear; close all;
U = rand(2, 200000);
u1 = U(:,1:2:end);
u2 = U(:,2:2:end);


Mu = [1;2];
ConvM = [4,4;4,9];
X = sqrt((-2) .* log(u1)) .* cos( 2 * pi .* u2);
[V,D] = eig(ConvM);
Y = zeros(size(X));

% visualize the distribution
figure;
plot(X(1,:),X(2,:));
for j = 1 : size(X,2)
    Y(:,j) = V * sqrt(D) * X(:,j);
end

Ym = Y + repmat(Mu, 1, size(Y,2));
figure();
beforeHist = histogram2(X(1,:),X(2,:),'Normalization','pdf');
title("pdf of the samples before shifting the mean");
% beforeHist = beforeHist ./ 100000;
figure();
afterHist = histogram2(Ym(1,:),Ym(2,:),'Normalization','pdf');
title("histogram of the samples after shifting the mean");
% afterHist = afterHist ./ 100000;

MuEstimated = mean(Ym')';
CovEstimated = cov(Ym');