
# Predict the salary

# read the dataframe
df <- read.csv('Salary_Data.csv')
head(df)
summary(df)

# Is there data is nan 
print(is.na(data))

# Split the data into train and test set
library(caTools)
set.seed(101)

sample = sample.split(df$Salary, SplitRatio = 0.70)
train = subset(df, sample == T)
test = subset(df, sample == F)
print(train)


# Now lets create the linear regressor model

model <- lm(formula = Salary ~ YearsExperience, data = df )

# prediction of salary
predict.salary <- predict(model, test)
predict.salary


# Plot the prediction
library(ggplot2)
#pl <- ggplot(df, aes(x = df$YearsExperience, df$YearsExperience)) + geom_point() 
#pl1 <- pl + geom_line(aes(predict.salary))
#print(pl1)

with(df,plot(YearsExperience, Salary))
abline(model)
