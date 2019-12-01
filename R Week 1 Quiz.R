x <- read.csv("hw1_data.csv")
#11 In the dataset provided for this Quiz, what are the column names of the dataset?
colnames(x)


#12 Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
x[1:2,]


# 13 How many observations (i.e. rows) are in this data frame?\
nrow(x)

# 14 Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
x[152:153,]
#or
x1<-tail(x,2)
x1
 
#15 What is the value of Ozone in the 47th row?
x$Ozone[47]
# 16 How many missing values are in the Ozone column of this data frame?
missNA <- is.na(x$Ozone)
as.numeric(missNA)
sum(missNA)
# or
missNA <- is.na(x$Ozone)
summary(missNA)
 

#17 What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
NoneOzoneNA <-!is.na(x$Ozone)
MeanOzoneNA <- x[NoneOzoneNA,]
mean(MeanOzoneNA$Ozone)

#18 extract the subset of rows of the data frame where Ozone values are above 31 and Temp Values are above 90,what is the mean of Solar.r in this subset?

DataOzone<-x[x$Ozone > 31,,drop= FALSE]
DataTemp <- DataOzone[DataOzone$Temp>90,,drop =FALSE]
Data <- complete.cases(DataTemp)
Data
Data1 <- DataTemp[Data,]
mean(Data1$Solar.R)
 
#Question 19:What is the mean of "Temp" when "Month" is equal to 6?
Data2 <- x[x$Month==6,]
Data3 <-Data2$Temp
mean(Data3)
# What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
data.May<- x[x$Month==5,,drop=FALSE]
data.MayO<-complete.cases(data.May)
Data.MayO <- data.May[data.MayO,]
max(Data.MayO$Ozone)
