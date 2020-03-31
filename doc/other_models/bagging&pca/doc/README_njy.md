# Project: Can you recognize the emotion from an image of a face?

### Doc folder for files ending with "_njy":

The doc directory contains the main.Rmd files that are used for building up different kinds of classification models by using different classification methods.

The main_knn_pca_njy.Rmd file is the R markdown file for the classification model using knn method with principle component analysis. By using pca method, the time for training the final model with optimal parameter is significantly shorter than that for training model without applying pca method to the raw dat_train data and raw dat_test data. However, the prediction accuracies for training set and test set do not appear to be having much improvement compared with traditional knn method.

The main_bagging_njy.Rmd file is the R markdown file for setting up the classification model using bagging models, including tree bag model and random forest model. It turns out that the accuracy of models using tree bag model and random forest model is 0.4011, much higher than that of models using knn method or knn with pca method. However, the training time for the bagging model is quite long, which might not be as efficient as expected to be.

The main_bagging_pca_njy.Rmd file is the R markdown file for the classification model using bagging models while applying principle component analysis for training data and test data. The reason for thinking about that is that the model training time for using pca method on knn models is much shorter than that for traditional knn models while accuracy might not be too much different. Similarly, using pca method for bagging models might reduce the model training time but retain similar accuracy. However, what is turned out to be is that the training time for this model is rather short compared with models using only bagging method, but the accuracy also decreases significantly.
