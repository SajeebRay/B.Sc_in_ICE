data = c(2,4,6,8);data
sample.data = rbind(c(2,4), c(2,6), c(2,8), c(4,6), c(4,8), c(6,8));sample.data
population_mean = mean(data);population_mean
ybar = rowMeans(sample.data);ybar
exp_ybar = sum(ybar*(1/6));exp_ybar

exp_ybar2 = sum((ybar^2)*(1/6));exp_ybar2
v_ybar = exp_ybar2 - (exp_ybar^2);v_ybar
N = length(data);N
n = 2;n
var = var(data);var
sigma2 = (var * (N - 1))/N;sigma2 
RHS = ((sigma2 * (N - n))/(n * (N - 1)));RHS

s2 = (sample.data[,1] - ybar)^2 + (sample.data[,2] - ybar)^2;s2
exp_s2 = sum(s2 * (1/6));exp_s2

alpha = 0.05;alpha
ztab = qnorm(alpha/2, mean = 0, sd = 1);ztab
LB = population_mean - abs(ztab)*sqrt(var/N);LB
UB = population_mean + abs(ztab)*sqrt(var/N);UB
population_total = population_mean * N;population_total
var_total = N^2 * sigma2;var_total
LB1 = population_total - abs(ztab)*sqrt(var_total/N);LB1
UB1 = population_total + abs(ztab)*sqrt(var_total/N);UB1
