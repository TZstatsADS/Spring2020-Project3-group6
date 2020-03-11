########################################
### Classification with testing data ###
########################################

test <- function(model, dat_test, par){
  
  ### Input: 
  ###  - the fitted classification model using training data
  ###  - processed features from testing images 
  ### Output: training model specification
  
  ### load libraries
  library("gbm")
  
  ### make predictions
  probs <- predict(model, dat_test, par$n.trees, type = "response")
  pred <- colnames(probs)[apply(probs, 1, which.max)]
  return(pred)
}
