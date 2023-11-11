a1 = 44;a1
n1 = 80;n1 
a2 = 41;a2
n2 = 90;n2 
alpha = 0.01;alpha
p1 = a1 / n1;p1
p2 = a2 / n2;p2
p = (a1 + a2) / (n1 + n2);p
q = (1 - p);q
zstat = (p1 - p2) / sqrt(p*q*(1/n1 + 1/n2));zstat
ztab = qnorm(alpha/2, mean=0, sd=1, lower.tail = FALSE);ztab
if(zstat > ztab){
  print("Null hypothesis is rejected")
}else{
  print("Null hypothesis is accepted")
}


pvalue = 2*pnorm(zstat);pvalue
if(pvalue < alpha){
  print("Null hypothes is rejected")
}else{
  print("Null hypothes is accepted")
}


LB =  (p1 - p2) - abs(ztab)*sqrt(p*q*(1/n1 + 1/n2));LB
UB =  (p1 - p2) + abs(ztab)*sqrt(p*q*(1/n1 + 1/n2));UB

