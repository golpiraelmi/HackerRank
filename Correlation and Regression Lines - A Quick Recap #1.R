x <-c(15,12,8,8,7,7,7,6,5,3) # physics
y <-c(10,25, 17,11,13,17,20,13,9,15) #history

#Karl Pearson's correlation coefficient = covariance(X, Y) / (stdv(X) * stdv(Y))

Karl<- cov(x,y)/(sd(x)*sd(y))
cat(round (Karl,3))