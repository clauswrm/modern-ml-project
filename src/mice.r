library(mice)

infile = "../data/challenge2_train.csv"
outfile = "../data/challenge2_train_imputed.csv"

data_csv<- read.csv(infile , header=TRUE)

data_with_nan <- data_csv[sapply(data_csv,is.numeric)]
summary(data_with_nan)
data <- complete(mice(data_with_nan, printFlag=FALSE))

write.csv(data, file = outfile,row.names=FALSE, col.names = TRUE)
