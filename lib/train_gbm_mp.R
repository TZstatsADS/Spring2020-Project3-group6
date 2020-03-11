###########################################################
### Train a classification model with training features ###
###########################################################
train <- function(feature_df = pairwise_data, par = NULL){
  ### Train an GBM model using processed features from training images
  
  ### Input:
  ### - a data frame containing features and labels
  ### - a parameter list
  ### Output: trained model
  
  ### load libraries
  library("gbm")
  
  ### Train with GBM
  if(is.null(par)){
    shrinkage = .01
    n.minobsinnode = 10
    n.trees = 200
  } else {
    shrinkage = par$shrinkage
    n.minobsinnode = par$n.minobsinnode
    n.trees = par$n.trees
  }
  
  gbm_model <- gbm(emotion_idx~., data = feature_df,
                    distribution = "multinomial",
                    shrinkage = shrinkage,
                    n.minobsinnode = n.minobsinnode,
                    n.trees = n.trees) 

  return(model = gbm_model)
}

