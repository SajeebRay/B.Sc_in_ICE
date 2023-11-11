data = read.csv(file.choose());data
math = data[,3];math
stat = data[,2];stat
sd_math = sd(math);sd_math
sd_stat = sd(stat);sd_stat
fcal = sd_math^2 / sd_stat^2;fcal

ftab = qf(alpha, df1 = 19, df2 = 19);ftab
if(fcal > ftab){
  print("Null hypothesis is rejected")
}else{
  print("Null hypothesis is accepted")
}


pvalue = 1 - pf(fcal, df1 = 19, df2 = 19);pvalue
if(pvalue < alpha){
  print("Null hypothesis is rejected")
}else{
  print("Null hypothesis is accepted")
}


