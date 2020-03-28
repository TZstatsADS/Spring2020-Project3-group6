########################################
### Classification with testing data ###
########################################

test <- function(dat_train, dat_test,k){
  
  ### Input: 
  ###  - the fitted classification model using training data
  ### (since knn does not need to train, we only specify k here)
  ###  - processed features from testing images 
  ### Output: training model specification
  

  
  ### make predictions
  pred <- class::knn(dat_train[,-which(colnames(dat_train) == 'emotion_idx')],
                      dat_test[,-which(colnames(dat_test) == 'emotion_idx')],
                      dat_train$emotion_idx,
                      k)
  return(pred)
}
