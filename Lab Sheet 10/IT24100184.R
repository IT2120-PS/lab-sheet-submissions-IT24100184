getwd()

## Q1
setwd("C:\\Users\\Lenovo\\Desktop\\IT24100184")

observed <- c(120, 95, 85, 100)
prob <- c(.25, .25, .25, .25)
chisq.test(x=observed, p=prob)


##Q2

file_path <-  "http://www.sthda.com/sthda/RDoc/data/housetasks.txt" 

housetasks <- read.delim(file_path, row.names =  1)
housetasks

chisq <- chisq.test(housetasks)
chisq


#Q3
#Consider 25% level of significance for the class
#Rejection Region: if the p-value for the test is less than 0.25,
#Reject the null hypothesis at 25% level of significance
#p-value for the test got as 2.2e-16
#Conclusion: Since the p-value (2.2e-16) < 0.25, we reject the null hypothesis
#This means the distribution of tasks in the housetasks data is not uniform
#Some household tasks are performed more by certain groups than others, and the difference is statistically significant
