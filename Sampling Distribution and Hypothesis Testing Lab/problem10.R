X=c(160,165,159,164,168,155,158,155,152,159,158,154,153,152,154);X
Y=c(70,72,64,63,72,65,62,56,56,60,58,58,55,56,60);Y
n = length(X);n
m = data.frame(X,Y);m
getwd()
write.csv(m, 'C:/Users/sajee/OneDrive/Documents/p10.csv');
alpha = 0.05;alpha
reg = lm(m$Y~m$X,m);reg
summary(reg);



r = cor(X,Y);r
tcal = r*sqrt(n-2)/(1-r^2);tcal
ttab = qt(alpha/2,n-2, lower.tail = FALSE);ttab
if(tcal > ttab){
  print("Null hypothesis is rejected")
}else{
  print("Null hypothesis is accepted")
}

pvalue = pt(tcal, n-2, lower.tail = FALSE); pvalue
if(alpha > pvalue){
  print("Null hypothesis is rejected")
}else{
  print("Null hypothesis is accepted")
}
