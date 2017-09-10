%load('Theta_run2_500iter_0.1lambda.mat'); %load your weight here
% load('animal_X.mat'); %load your features here
%load('animal_val.mat'); %load your features here

X = X.';
m = size(X,1);
X = [ones(m, 1) X];
all_theta = all_theta.';
result = sigmoid(X * all_theta);
result = result.';

[value, ids] = max(result);
%accuracy = ((sum(ids == 2))/length(ids)) * 100;

