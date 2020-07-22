################# 2  sampling T  test##########################



dimeter<-read.csv(file.choose()) 
View(dimeter)

str(dimeter)

################### Normality Teast #############
#ad.test(interestRatewavier)
#ad.test(StanrdardPromotin)

shapiro.test(dimeter$`Unit A`)

# p-value=0.32>0.05 so p high null fly => it follow normal distribution
?shapiro.test

shapiro.test(dimeter$`Unit B`)
# p-value= 0.5225>0.05 so p high null fly => It follow normal distribution


var.test(Unit A,unitB)


#################Variance test#################################

var(dimeter$UnitA)
#var.test(Unit A ,Unit B,atlernative="two.side",conf.level)
?var
r<- cor("Unit A ,Unit B")
