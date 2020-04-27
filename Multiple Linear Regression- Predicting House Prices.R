library(caret)
library(dplyr)
B <- matrix(c(0.18, 1.0, 0.92, 0.07, 0.85, 0.99, 0.87, 0.89,0.26,0.11, 0.37, 0.16,0.41,0.47,
        109.85,155.72, 137.66,76.17,139.75,162.6,151.77), nrow=7, ncol=3) 
B<- as.data.frame(B)

fit_glm<- train(V3 ~ V1+V2, method="glm", data=B)

validation<- matrix(c(0.49, 0.57, 0.56, 0.76, 0.18, 0.83, 0.64,0.18), nrow=4, ncol=2)

y_hat_glm<- predict(fit_glm, validation)

cat(y_hat_glm, sep='\n')
  
