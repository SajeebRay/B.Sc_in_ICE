temp1 = c(32,34,31,33,35,36,34,34,34,35,32,33,33,33,32,32,34,33,32,34,32,31,33,34,35,34,33,33,33,34,34);temp1
temp2 = c(34,34,35,35,35,35,35,35,36,37,34,33,34,35,34,34,36,34,33,34,32,33,34,36,35,35,35,34,35,34,35);temp2
d = data.frame(temp1, temp2);d
getwd()
write.csv(d, 'C:/Users/sajee/OneDrive/Documents/problem7.csv')

alpha = 0.05;alpha
x1bar = mean(temp1);x1bar
x2bar = mean(temp2);x2bar
n1 = length(temp1);n1
n2 = length(temp2);n2
sd1 = sd(temp1);sd1
sd2 = sd(temp2);sd2
zstat = (x1bar - x2bar) / sqrt(sd1^2/n1 + sd2^2/n2);zstat
ztab = qnorm(alpha/2, mean=0, sd=1);ztab
if(abs(zstat) > abs(ztab)){
  print("Null hypothesis is rejected")
}else{
  print("Null hypothesis is accepted")
}


pvalue = 2 * pnorm(zstat);pvalue
if(pvalue < alpha){
  print("Null hypothesis is rejected")
}else{
  print("Null hypothesis is accepted")
}



boxplot(temp1,temp2,main="Box plot",xlab="Month",ylab="Temperature")
LCL=(x1bar-x1bar)-abs(ztab)*sqrt(sd1^2/n1+sd2^2/n2);LCL
UCL=(x2bar-x2bar)+abs(ztab)*sqrt(sd1^2/n1+sd2^2/n2);UCL
