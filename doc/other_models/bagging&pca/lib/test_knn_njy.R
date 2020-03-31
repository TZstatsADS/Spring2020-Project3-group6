########################################
### Classification with testing data ###
########################################

test <- function(dat_train, dat_test,k){
  
  ### Input: 
  ###  - the training data
  ###  - the testing data
  ###  - number of neighbours refering to
  ### Output: prediction
  

  
  ### make predictions
  pred <- class::knn(dat_train[,-which(colnames(dat_train) == 'emotion_idx')],
                      dat_test[,-which(colnames(dat_test) == 'emotion_idx')],
                      dat_train$emotion_idx,
                      k)
  return(pred)
}
