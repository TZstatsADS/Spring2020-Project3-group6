########################
### Cross Validation ###
########################

### Author: Jiayun Ni

### Project 3

cv.function <- function(dat_train, method, metric, trControl){
  ### Input:
  ### - train data frame
  ### - method: training method
  ### - tuning parameters and control parameters
  
  
    train.data <- dat_train
    
    par <- list(method = method, metric = metric, trControl = trControl)
    fit <- train(train.data, par)
    
    cv.error.mean = mean(as.numeric(unlist(fit$results[2])))
    cv.error.sd = mean(as.numeric(unlist(fit$results[4])))
    
    

  return(c(cv.error.mean,cv.error.sd))
}