###########################################################
### Train a classification model with training features ###
###########################################################
train <- function(feature_df = pairwise_data, par = NULL){
  ### Train an SVM model using processed features from training images
  
  ### Input:
  ### - a data frame containing features and labels
  ### - a parameter list
  ### Output: trained model
  
  ### load libraries
  library("caret")
  library("caretEnsemble")
  library("randomForest")
  
  ### Train with bagging
  if(is.null(par)){
    method = "treebag"
    metric = "Accuracy"
    trControl = trainControl(method="repeatedcv", number=10, repeats=3)
  } else {
    method = par$method
    metric = par$metric
    trControl = par$trControl
  }
  
   bagging_model <- caret::train(emotion_idx~., data = feature_df,
                                 method = method, metric = metric, trControl = trControl) 

  return(model = bagging_model)
}
