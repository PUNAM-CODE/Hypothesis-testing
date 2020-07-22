###############################Hpothsis Testing##########################
##############################ques1###############
library(readxl)
dimeter <- read_excel("dimeter.xlsx")
 View(dimeter)
 
 ###################Normaity test#################
 library(nortest)
 
 shapiro.test(dimeter$`Unit A`)
 # p value 0.32>0.05 it is norma distribution
 
 shapiro.test(dimeter$`Unit B`)
 # p value 0.52>0.05 it is normal distribution
 
 #############################check external condition##############
#################external condition not same################## 
 #################check variance ###############
 library(moments)
 var(dimeter$`Unit A`)
 var(dimeter$`Unit B`)

 t.test(dimeter$`Unit A`,dimeter$`Unit B`,alternative = "two.side",conf.level = 0.95,correct=TRUE)
 
 #t.test(InterestRateWaiver,StandardPromotion,alternative = "two.sided",conf.level = 0.95,correct = TRUE)#two sample T.Tes
 
 
 ?t.test
 t.test(InterestRateWaiver,StandardPromotion,alternative = "greater",var.equal = T)
 
 t.test(dimeter$`Unit A`,dimeter$`Unit B`,alternative = "greater",var.equal = T)
 
 