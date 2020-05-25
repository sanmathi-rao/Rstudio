data(mtcars)
View(mtcars)
model1<-lm(mpg~cyl+disp+hp+drat+wt+qsec+vs+am+gear+carb,data=mtcars)
summary(model1)
 
library(usdm)
vifstep(mtcars[,-1],th=7)
model2<-lm(mpg~hp+drat+wt+qsec+vs+am+gear+carb,data=mtcars)
summary(model1)
summary(model2)
model3<-lm(mpg~hp+drat+qsec+vs+am+gear+carb,data=mtcars)
model4<-lm(mpg~disp+hp+drat+wt+qsec+vs+am+gear+carb,data=mtcars)
summary(model4)
 #model2 is the best model