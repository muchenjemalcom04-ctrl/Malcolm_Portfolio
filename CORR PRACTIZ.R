Q1=Question1_LabTest;Q1
Model_1<-lm(Y~A+B+C+D,data=Q1);Model_1
summary(Model_1)

#Scatter plot matrix 
pairs(~A+B+C+D,data=Q1)
#Correlation Test 
cor.test(Q1$Y,Q1$B) 

#Q-Q plot for y 
qqnorm(Q1$Y)
qqline(Q1$Y)
shapiro.test(Q1$Y)


Q2=Question2LabTest;Q2
Model_2=glm(Z~w1+w2+w3,data=Q2)
summary(Model_2)
evaluate2<-data.frame(w1=5,w2=3,w3=8);evaluate2
predict(Model_2,evaluate2,type="response")
# prediction ??? 




Model_2.1=glm(Z~w1+w2+w3+w4,data=Q2);Model_2.1
summary(Model_2.1)

mean_fitted_values <- list(mean(fitted(Model_2)),var(fitted(Model_2)),sd(fitted(Model_2)));mean_fitted_values

#Testing for best fit Model 
anova(Model_2,Model_2.1,test="Chisq")


