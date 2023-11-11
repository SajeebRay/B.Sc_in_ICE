(i)
x=c(16.0, 15.2, 12.0, 16.9, 14.4, 16.3, 15.6, 12.9, 15.3, 15.1, 15.8, 15.5, 12.5, 14.5, 14.9, 15.1, 16.0, 12.5, 14.3, 15.4, 15.4, 13.0, 12.6, 14.9, 15.1, 15.3, 12.4, 17.2, 14.7, 14.8);x
n=length(x);n
muhat=sum(x)/n;muhat
sigmahat=sqrt((sum(x^2)-n*muhat^2)/n);sigmahat
(ii)
alpha=0.10;alpha
ztab=qnorm(alpha/2,mean=0,sd=1);ztab
LCL=muhat-abs(ztab)*sigmahat/sqrt(n);LCL
UCL=muhat+abs(ztab)*sigmahat/sqrt(n);UCL

