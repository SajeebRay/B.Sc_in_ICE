data = c(2,4,6,8);data 
sample.data = rbind(c(2,2),c(2,4),c(2,6),c(2,8),c(4,2),c(4,4),c(4,6),c(4,8),c(6,2),c(6,4),c(6,6),c(6,8),c(8,2),c(8,4),c(8,6),c(8,8));sample.data
pop.mean = mean(data);pop.mean
ybar = rowMeans(sample.data);ybar
exp.ybar = sum(ybar*(1/16));exp.ybar

exp.ybar2 = sum(ybar^2*(1/16));exp.ybar2
var.ybar = exp.ybar2 - (exp.ybar^2);var.ybar
var = var(data);var
n = 2;n
N = length(data);N
sigma2 = var*(N-1)/N;sigma2
RHS = (sigma2*(N-n))/(n*(N-1));RHS

sd2 = (sample.data[,1]-ybar)^2 + (sample.data[,2]-ybar)^2; sd2
exp_sd2 = sum(sd2*(1/16)); exp_sd2

alpha = 0.05;alpha 
ztab = qnorm(alpha/2,mean = 0, sd = 1);ztab
LB = pop.mean - abs(ztab)*sqrt(var/N);LB
UB = pop.mean + abs(ztab)*sqrt(var/N);UB

pop.total = pop.mean*N;pop.total
var.total = N^2*sigma2;var.total
LB1 = pop.total - abs(ztab)*sqrt(var.total/N);LB1
UB1 = pop.total + abs(ztab)*sqrt(var.total/N);UB1  

