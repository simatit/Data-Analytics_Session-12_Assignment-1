# Ques.1.a. Perform ANOVA test on the discriminant analysis scores of 
#           nuclear localization signals of both nuclear and non-nuclear 
#           proteins by class variables (Target).

a<-aov(yeast$mit~yeast$nuc)
summary(a)

#Ques.1.b.Which class is significantly different from others?

plot(yeast$mcg~yeast$class)
aa<-aov(yeast$gvh~yeast$class)
summary(aa)
TukeyHSD(aa)

#the class is significantly different which p>0.05