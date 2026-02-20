
> names =c("Carrol","Mike","John") 
> gender = c("Female", "Male", "Male") 
> height = c(160, 175, 173) 
> weight = c(49, 89, 77) 
> age = c(35, 36, 41) 
> df = data.frame(names,gender,height,weight,age) 
> View(df)

> df[1,3]
> df[1:2, 1:3]
> df["height"]
> df["gender"]
> df$gender
> df[1:2]
> df[c(1,2)]

>df[df$names=="Mike",]
> df[dfSage>35,]
> df[df$height>170 & df$weight>80,]
> df[df$gender=="Male",]
> df[df$height>170 & df$age<40,]

> print("Before Adding:\n")
> print(df)
> newDf = rbind(
  +     df,
  +     data.frame(
    +         names = c("Suuria", "Malik"),
    +         gender = c("Female", "Male"),
    +         height = c(156, 169),
    +         weight = c(56, 81),
    +         age = c(23, 28)
    +     )
  + )
> 
  > print("After Added rows:\n")
> print(newDf)

> gender = c("Female", "Male", "Male","Female","Male") 
> height = c(160, 175, 173,156,169) 
> weight = c(49, 89, 77,56,81) 
> age = c(35, 36, 41,23, 28) 
> names =c("Carrol","Mike","John","Suuria","Malik") 
> df1 = data.frame(names,gender,height,weight,age) 
> states = c("Selangor","Perak","Melaka") 
> names = c("Carrol","John","Malik") 
> df2 = data.frame(names, states) 
> dfMerge= merge(df1, df2, by = "names", all= TRUE)
> View(dfMerge)
> View(df2)

> df->df1 #backup data
#remove
> newDf2 = newDf[-2]
> newDf3 = newDf
> newDf3[1,"age"] <- 30 
> newDf3[4, "height"] <- 152  
> 
  > View(dfMerge)
> View(newDf3)
> View(newDf2)
> View(newDf3)
> newDf4 = newDf
> newDf4[,-4]

#covid_data
> data_cv <- read.csv("C:/Users/Auni/Downloads/my_covid.csv")
> summary(data_cv)

> newdf <- data_cv[-seq(10, 13),]
> View(newdf)
> write.csv (newdf, "C:/Users/Auni/Downloads/my_covid.csv")

> a<-c(1:5, rep(NA,3),6:10)
> a
> sum(a)
> b<-a[!is.na(a)]
> b
> sum(b)

> #creating a vector of integers having NAs. 
  > a<-c(seq(1,10,3), rep(NA,4), seq(10,2,-2)) 
  > a
  > #assigning 0 to NAs 
    > a[is.na(a)]<-0
    > a
    > #assigning mean to NAs 
      > a[is.na(a)]<-mean(a,na.rm = TRUE)
      > a
      
      > example_cv <- read.csv("C:/Users/Auni/Downloads/NAexample.csv")
      > is.na(df) #whole dataframe
      > df = example_cv 
      > is.na(df["VarA"])
      
      > library(readr)
      > df<- read.csv("C:/Users/Auni/Downloads/NAexample.csv")
      > View(df)
      > df$VarA[is.na(df$VarA)]<-sd(na.omit(df$VarA))
      > df$VarB[is.na(df$VarB)]<-mean(df$VarB,na.rm=TRUE)
      > df$VarC[is.na(df$VarC)]<-median(df$VarC,na.rm=TRUE)
      > View(df)
      
      library(readr) 
      df_raw <- read.csv("C:/Users/Auni/Downloads/file1.csv") 
      df_cleaned <- df_raw 
      df_logrm <- data.frame(TagsValue=character(), Definition=character(), Value=character()) 
      rows_to_remove <- c()
      for (i in 1:nrow(df_raw)) 
      { if (df_raw[i, 2] == "Bad value" && df_raw[i, 3] == "Garbage") 
      { rows_to_remove <- c(rows_to_remove, i) 
      # Log the removed bad values 
      df_logrm <- rbind(df_logrm, c(df_raw[i, 1], df_raw[i, 2],df_raw[i, 3])) 
      # Save the index for the rows to be removed 
      } } 
      df_cleaned <- df_cleaned[-rows_to_remove, ] 
      View(df_cleaned) 
      View (df_logrm)
      
      > data(iris) 
      > head(iris) 
      > #check its type 
        > class(iris$Species)
      > #View values of catagories/level 
        > levels(iris$Species)
      > #Convert Categorical to numeric 
        > iris$Species_numeric <- as.numeric(iris$Species) 
      > head(iris)
      > iris$Sepal.Length
      > #calculate mean
        > mean_value <- mean(iris$Sepal.Length)
      > mean_value
      > #calculate standard deviation
        > sd_value <- sd(iris$Sepal.Length)
      > sd_value
      > #calculate manually
        > z_manual <- (iris$Sepal.Length - mean_value) / sd_value
      > z_manual
      > #Standardized entire column
        > iris$Sepal.Length_z_manual <- (iris$Sepal.Length - mean_value) / sd_value
      > head(iris)
      > #Standardized using built in function
        i> ris$Sepal.Length_z <- scale(iris$Sepal.Length)
      > head(iris)
      