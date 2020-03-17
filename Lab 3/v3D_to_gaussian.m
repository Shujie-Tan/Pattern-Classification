clear; close all;
U = rand(3, 200000);
u1 = U(:,1:2:end);
u2 = U(:,2:2:end);
u3 = U(:,3:2:end);
Mu = [5;-5;6];
ConvM = [5,2,-1;2,5,0;-1,0,4];
X = sqrt((-2) .* log(u1)) .* cos( 2 * pi .* u2);
% visualize the distribution
figure;
plot(X(1,:),X(2,:));
title("x1,x2");
figure;
plot(X(1,:),X(3,:));
title("x1,x3");
figure;
plot(X(2,:),X(3,:));
title("x2,x3");

[V,D] = eig(ConvM);
Y = zeros(size(X));

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
title("pdf of the Ym(1,:),Ym(2,:) after shifting the mean");
figure();
afterHist = histogram2(Ym(1,:),Ym(3,:),'Normalization','pdf');
title("pdf of the Ym(1,:),Ym(3,:) after shifting the mean");
figure();
afterHist = histogram2(Ym(2,:),Ym(3,:),'Normalization','pdf');
title("pdf of the Ym(2,:),Ym(3,:) after shifting the mean");
% afterHist = afterHist ./ 100000;

MuEstimated = mean(Ym')';
CovEstimated = cov(Ym');