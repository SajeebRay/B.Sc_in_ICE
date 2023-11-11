norm = rnorm(200,50,26);norm
exp = rexp(200,1/60);exp
n = length(norm);n
n1 = length(exp);n1
muhat = sum(norm)/n;muhat 

sigmahut = sqrt((sum(norm^2) - n*(muhat^2))/n);sigmahut
lemda = 1/mean(exp);lemda


alpha = 0.05;alpha
ztab = qnorm(alpha/2, mean = 0, sd = 1);ztab
LB = 50-abs(ztab)*sqrt(26/n);LB
UB = 50+abs(ztab)*sqrt(26/n);UB

ztab1 = qnorm(1-(alpha/2));ztab1
LB1 = lemda - abs(ztab1)*(lemda/sqrt(n1));LB1
UB1 = lemda + abs(ztab1)*(lemda/sqrt(n1));UB1 

var_exp = 1/(lemda^2);var_exp
var_exp1 = var(exp);var_exp1

