## Homework 4, Problem 2
## Faculty numbers: 700870, 700875, 700890

crime <-
  read.delim(
    'https://s3.eu-central-1.amazonaws.com/econometrics2018/data/crime.csv',
    stringsAsFactors = FALSE
  )
str(crime)
library(dplyr)
library(ggplot2)

## a)
fit <- lm(C ~ HS, data = crime)
summary(fit)
## Crime rates increase with the increase in high-school graduates percentage.

## b)
pairs(~ C + U + I + HS, data = crime)

## c)
fit1 <- lm(C ~ HS + U, data = crime)
summary(fit1)
## There is severe multicolinearity across feature variables which changes the estimates substantially
## This means that one feature variable can be explained by another feature variable, thus the estimates
## are not incorrect but may not reproduce valid estimates for the change in the explained variable

## d)
## This may be true according to the model,
##however we should note that the multicolinearity
## may affect the estimated coefficient values
##There are other variables which influence the crime rate but are omitted in our model.

## e)
fit2 <- lm(C ~ HS + U + I, data = crime)
summary(fit2)
